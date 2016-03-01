#!/usr/bin/env python

import os           # Import the os module for basic path manipulation
import arvados      # Import the Arvados sdk module
import re
import subprocess

import hgi_arvados
from hgi_arvados import gatk
from hgi_arvados import gatk_helper

def main():
    ################################################################################
    # Phase I: Check inputs and setup sub tasks 1-N to process group(s) based on
    #          applying the capturing group named "group_by" in group_by_regex.
    #          (and terminate if this is task 0)
    ################################################################################
    ref_input_pdh = gatk.prepare_gatk_reference_collection(reference_coll=arvados.current_job()['script_parameters']['reference_collection'])

    # Setup sub tasks 1-N (and terminate if this is task 0)
    hgi_arvados.one_task_per_cram_file(if_sequence=0, and_end_task=True)

    # Get object representing the current task
    this_task = arvados.current_task()

    # We will never reach this point if we are in the 0th task
    assert(this_task['sequence'] != 0)

    ################################################################################
    # Phase II: Read interval_list and split into additional intervals
    ################################################################################
    hgi_arvados.one_task_per_interval(interval_count,
                                      reuse_tasks=True,
                                      if_sequence=1, and_end_task=True)

    # We will never reach this point if we are in the 1st task sequence
    assert(this_task['sequence'] > 1)

    ################################################################################
    # Phase IIIa: If we are a "reuse" task, just set our output and be done with it
    ################################################################################
    if 'reuse_job_task' in this_task['parameters']:
        print "This task's work was already done by JobTask %s" % this_task['parameters']['reuse_job_task']
        exit(0)

    ################################################################################
    # Phase IIIb: Call Haplotypes!
    ################################################################################
    ref_file = gatk_helper.mount_gatk_reference(ref_param="ref")
    interval_list_file = gatk_helper.mount_gatk_interval_list_input(inputs_param="chunk")
    cram_file = gatk_helper.mount_gatk_cram_input(input_param="input")
    out_dir = hgi_arvados.prepare_out_dir()
    out_filename = os.path.basename(cram_file_base) + "." + os.path.basename(interval_list_file) + ".g.vcf.gz"
    # HaplotypeCaller!
    gatk_exit = gatk.haplotypecaller(ref_file, cram_file, interval_list_file, os.path.join(out_dir, out_filename))

    if gatk_exit != 0:
        print "ERROR: GATK exited with exit code %s (NOT WRITING OUTPUT)" % gatk_exit
        arvados.api().job_tasks().update(uuid=arvados.current_task()['uuid'],
                                         body={'success':False}
                                         ).execute()
    else:
        print "GATK exited successfully, writing output to keep"

        # Write a new collection as output
        out = arvados.CollectionWriter()

        # Write out_dir to keep
        out.write_directory_tree(out_dir, stream_name)

        # Commit the output to Keep.
        output_locator = out.finish()

        # Use the resulting locator as the output for this task.
        this_task.set_output(output_locator)

    # Done!


if __name__ == '__main__':
    main()
