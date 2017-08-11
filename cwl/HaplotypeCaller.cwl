{
    "cwlVersion": "v1.0", 
    "inputs": [
        {
            "doc": "Reference sequence file", 
            "inputBinding": {
                "prefix": "--reference_sequence"
            }, 
            "type": [
                "null", 
                "File"
            ], 
            "id": "reference_sequence", 
            "secondaryFiles": [
                ".fai", 
                "^.dict"
            ]
        }, 
        {
            "doc": "Input file containing sequence data (BAM or CRAM)", 
            "inputBinding": {
                "prefix": "--input_file"
            }, 
            "type": "File", 
            "id": "input_file", 
            "secondaryFiles": "$(self.location+'.'+self.basename.split('.').splice(-1)[0].replace('m','i'))"
        }, 
        {
            "doc": "Index file of reference genome", 
            "type": "File", 
            "id": "refIndex"
        }, 
        {
            "doc": "dict file of reference genome", 
            "type": "File", 
            "id": "refDict"
        }, 
        {
            "default": 0.002, 
            "doc": "Threshold for the probability of a profile state being active.", 
            "inputBinding": {
                "prefix": "--activeProbabilityThreshold"
            }, 
            "type": [
                "null", 
                "double"
            ], 
            "id": "activeProbabilityThreshold"
        }, 
        {
            "doc": "The active region extension; if not provided defaults to Walker annotated default", 
            "inputBinding": {
                "prefix": "--activeRegionExtension"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "activeRegionExtension"
        }, 
        {
            "doc": "Use this interval list file as the active regions to process", 
            "type": [
                "null", 
                {
                    "items": [
                        "File", 
                        "string"
                    ], 
                    "inputBinding": {
                        "prefix": "--activeRegionIn"
                    }, 
                    "type": "array"
                }
            ], 
            "id": "activeRegionIn"
        }, 
        {
            "doc": "The active region maximum size; if not provided defaults to Walker annotated default", 
            "inputBinding": {
                "prefix": "--activeRegionMaxSize"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "activeRegionMaxSize"
        }, 
        {
            "doc": "Output the active region to this IGV formatted file", 
            "inputBinding": {
                "prefix": "--activeRegionOut"
            }, 
            "type": [
                "null", 
                "string"
            ], 
            "id": "activeRegionOut"
        }, 
        {
            "doc": "Output the raw activity profile results in IGV format", 
            "inputBinding": {
                "prefix": "--activityProfileOut"
            }, 
            "type": [
                "null", 
                "string"
            ], 
            "id": "activityProfileOut"
        }, 
        {
            "doc": "The set of alleles at which to genotype when --genotyping_mode is GENOTYPE_GIVEN_ALLELES", 
            "inputBinding": {
                "prefix": "--alleles"
            }, 
            "type": [
                "null", 
                "File"
            ], 
            "id": "alleles"
        }, 
        {
            "doc": "Allow graphs that have non-unique kmers in the reference", 
            "inputBinding": {
                "prefix": "--allowNonUniqueKmersInRef"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "allowNonUniqueKmersInRef"
        }, 
        {
            "doc": "Annotate all sites with PLs", 
            "inputBinding": {
                "prefix": "--allSitePLs"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "allSitePLs"
        }, 
        {
            "doc": "If provided, we will annotate records with the number of alternate alleles that were discovered (but not necessarily genotyped) at a given site", 
            "inputBinding": {
                "prefix": "--annotateNDA"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "annotateNDA"
        }, 
        {
            "doc": "One or more specific annotations to apply to variant calls", 
            "type": [
                "null", 
                {
                    "items": "string", 
                    "inputBinding": {
                        "prefix": "--annotation"
                    }, 
                    "type": "array"
                }
            ], 
            "id": "annotation"
        }, 
        {
            "doc": "File to which assembled haplotypes should be written", 
            "inputBinding": {
                "prefix": "--bamOutput"
            }, 
            "type": [
                "null", 
                "string"
            ], 
            "id": "bamOutput"
        }, 
        {
            "doc": "Which haplotypes should be written to the BAM", 
            "inputBinding": {
                "prefix": "--bamWriterType"
            }, 
            "type": [
                "null", 
                {
                    "symbols": [
                        "ALL_POSSIBLE_HAPLOTYPES", 
                        "CALLED_HAPLOTYPES"
                    ], 
                    "type": "enum"
                }
            ], 
            "id": "bamWriterType"
        }, 
        {
            "doc": "The sigma of the band pass filter Gaussian kernel; if not provided defaults to Walker annotated default", 
            "inputBinding": {
                "prefix": "--bandPassSigma"
            }, 
            "type": [
                "null", 
                "double"
            ], 
            "id": "bandPassSigma"
        }, 
        {
            "doc": "Comparison VCF file", 
            "type": [
                "null", 
                {
                    "items": "File", 
                    "inputBinding": {
                        "prefix": "--comp"
                    }, 
                    "type": "array"
                }
            ], 
            "id": "comp"
        }, 
        {
            "doc": "1000G consensus mode", 
            "inputBinding": {
                "prefix": "--consensus"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "consensus"
        }, 
        {
            "doc": "Tab-separated File containing fraction of contamination in sequencing data (per sample) to aggressively remove. Format should be \"<SampleID><TAB><Contamination>\" (Contamination is double) per line; No header.", 
            "inputBinding": {
                "prefix": "--contamination_fraction_per_sample_file"
            }, 
            "type": [
                "null", 
                "File"
            ], 
            "id": "contamination_fraction_per_sample_file"
        }, 
        {
            "default": 0.0, 
            "doc": "Fraction of contamination in sequencing data (for all samples) to aggressively remove", 
            "inputBinding": {
                "prefix": "--contamination_fraction_to_filter"
            }, 
            "type": [
                "null", 
                "double"
            ], 
            "id": "contamination_fraction_to_filter"
        }, 
        {
            "doc": "dbSNP file", 
            "inputBinding": {
                "prefix": "--dbsnp"
            }, 
            "type": [
                "null", 
                "File"
            ], 
            "id": "dbsnp"
        }, 
        {
            "doc": "Print out very verbose debug information about each triggering active region", 
            "inputBinding": {
                "prefix": "--debug"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "debug"
        }, 
        {
            "doc": "Don't skip calculations in ActiveRegions with no variants", 
            "inputBinding": {
                "prefix": "--disableOptimizations"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "disableOptimizations"
        }, 
        {
            "doc": "Disable physical phasing", 
            "inputBinding": {
                "prefix": "--doNotRunPhysicalPhasing"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "doNotRunPhysicalPhasing"
        }, 
        {
            "doc": "Disable iterating over kmer sizes when graph cycles are detected", 
            "inputBinding": {
                "prefix": "--dontIncreaseKmerSizesForCycles"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "dontIncreaseKmerSizesForCycles"
        }, 
        {
            "doc": "If specified, we will not trim down the active region from the full region (active + extension) to just the active interval for genotyping", 
            "inputBinding": {
                "prefix": "--dontTrimActiveRegions"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "dontTrimActiveRegions"
        }, 
        {
            "doc": "Do not analyze soft clipped bases in the reads", 
            "inputBinding": {
                "prefix": "--dontUseSoftClippedBases"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "dontUseSoftClippedBases"
        }, 
        {
            "doc": "Mode for emitting reference confidence scores", 
            "inputBinding": {
                "prefix": "--emitRefConfidence"
            }, 
            "type": [
                "null", 
                {
                    "symbols": [
                        "NONE", 
                        "BP_RESOLUTION", 
                        "GVCF"
                    ], 
                    "type": "enum"
                }
            ], 
            "id": "emitRefConfidence"
        }, 
        {
            "doc": "One or more specific annotations to exclude", 
            "type": [
                "null", 
                {
                    "items": "string", 
                    "inputBinding": {
                        "prefix": "--excludeAnnotation"
                    }, 
                    "type": "array"
                }
            ], 
            "id": "excludeAnnotation"
        }, 
        {
            "doc": "If provided, all bases will be tagged as active", 
            "inputBinding": {
                "prefix": "--forceActive"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "forceActive"
        }, 
        {
            "default": 10, 
            "doc": "Flat gap continuation penalty for use in the Pair HMM", 
            "inputBinding": {
                "prefix": "--gcpHMM"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "gcpHMM"
        }, 
        {
            "doc": "Specifies how to determine the alternate alleles to use for genotyping", 
            "inputBinding": {
                "prefix": "--genotyping_mode"
            }, 
            "type": [
                "null", 
                {
                    "symbols": [
                        "DISCOVERY", 
                        "GENOTYPE_GIVEN_ALLELES"
                    ], 
                    "type": "enum"
                }
            ], 
            "id": "genotyping_mode"
        }, 
        {
            "doc": "Write debug assembly graph information to this file", 
            "inputBinding": {
                "prefix": "--graphOutput"
            }, 
            "type": [
                "null", 
                "string"
            ], 
            "id": "graphOutput"
        }, 
        {
            "doc": "One or more classes/groups of annotations to apply to variant calls", 
            "type": [
                "null", 
                {
                    "items": "string", 
                    "inputBinding": {
                        "prefix": "--group"
                    }, 
                    "type": "array"
                }
            ], 
            "id": "group"
        }, 
        {
            "doc": "GQ thresholds for reference confidence bands", 
            "type": [
                "null", 
                {
                    "items": "int", 
                    "inputBinding": {
                        "prefix": "--GVCFGQBands"
                    }, 
                    "type": "array"
                }
            ], 
            "id": "GVCFGQBands"
        }, 
        {
            "default": 0.001, 
            "doc": "Heterozygosity value used to compute prior likelihoods for any locus", 
            "inputBinding": {
                "prefix": "--heterozygosity"
            }, 
            "type": [
                "null", 
                "double"
            ], 
            "id": "heterozygosity"
        }, 
        {
            "default": 0.000125, 
            "doc": "Heterozygosity for indel calling", 
            "inputBinding": {
                "prefix": "--indel_heterozygosity"
            }, 
            "type": [
                "null", 
                "double"
            ], 
            "id": "indel_heterozygosity"
        }, 
        {
            "default": 10, 
            "doc": "The size of an indel to check for in the reference model", 
            "inputBinding": {
                "prefix": "--indelSizeToEliminateInRefModel"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "indelSizeToEliminateInRefModel"
        }, 
        {
            "doc": "Input prior for calls", 
            "type": [
                "null", 
                {
                    "items": "double", 
                    "inputBinding": {
                        "prefix": "--input_prior"
                    }, 
                    "type": "array"
                }
            ], 
            "id": "input_prior"
        }, 
        {
            "doc": "Kmer size to use in the read threading assembler", 
            "type": [
                "null", 
                {
                    "items": "int", 
                    "inputBinding": {
                        "prefix": "--kmerSize"
                    }, 
                    "type": "array"
                }
            ], 
            "id": "kmerSize"
        }, 
        {
            "default": 6, 
            "doc": "Maximum number of alternate alleles to genotype", 
            "inputBinding": {
                "prefix": "--max_alternate_alleles"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "max_alternate_alleles"
        }, 
        {
            "default": 128, 
            "doc": "Maximum number of haplotypes to consider for your population", 
            "inputBinding": {
                "prefix": "--maxNumHaplotypesInPopulation"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "maxNumHaplotypesInPopulation"
        }, 
        {
            "default": 10000, 
            "doc": "Maximum reads in an active region", 
            "inputBinding": {
                "prefix": "--maxReadsInRegionPerSample"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "maxReadsInRegionPerSample"
        }, 
        {
            "default": 10, 
            "doc": "Minimum base quality required to consider a base for calling", 
            "inputBinding": {
                "prefix": "--min_base_quality_score"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "min_base_quality_score"
        }, 
        {
            "default": 4, 
            "doc": "Minimum length of a dangling branch to attempt recovery", 
            "inputBinding": {
                "prefix": "--minDanglingBranchLength"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "minDanglingBranchLength"
        }, 
        {
            "default": 2, 
            "doc": "Minimum support to not prune paths in the graph", 
            "inputBinding": {
                "prefix": "--minPruning"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "minPruning"
        }, 
        {
            "default": 10, 
            "doc": "Minimum number of reads sharing the same alignment start for each genomic location in an active region", 
            "inputBinding": {
                "prefix": "--minReadsPerAlignmentStart"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "minReadsPerAlignmentStart"
        }, 
        {
            "default": 1, 
            "doc": "Number of samples that must pass the minPruning threshold", 
            "inputBinding": {
                "prefix": "--numPruningSamples"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "numPruningSamples"
        }, 
        {
            "doc": "File to which variants should be written", 
            "inputBinding": {
                "prefix": "--out"
            }, 
            "type": [
                "null", 
                "string"
            ], 
            "id": "out"
        }, 
        {
            "doc": "Specifies which type of calls we should output", 
            "inputBinding": {
                "prefix": "--output_mode"
            }, 
            "type": [
                "null", 
                {
                    "symbols": [
                        "EMIT_VARIANTS_ONLY", 
                        "EMIT_ALL_CONFIDENT_SITES", 
                        "EMIT_ALL_SITES"
                    ], 
                    "type": "enum"
                }
            ], 
            "id": "output_mode"
        }, 
        {
            "doc": "The PCR indel model to use", 
            "inputBinding": {
                "prefix": "--pcr_indel_model"
            }, 
            "type": [
                "null", 
                {
                    "symbols": [
                        "NONE", 
                        "HOSTILE", 
                        "AGGRESSIVE", 
                        "CONSERVATIVE"
                    ], 
                    "type": "enum"
                }
            ], 
            "id": "pcr_indel_model"
        }, 
        {
            "default": 45, 
            "doc": "The global assumed mismapping rate for reads", 
            "inputBinding": {
                "prefix": "--phredScaledGlobalReadMismappingRate"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "phredScaledGlobalReadMismappingRate"
        }, 
        {
            "doc": "Name of single sample to use from a multi-sample bam", 
            "inputBinding": {
                "prefix": "--sample_name"
            }, 
            "type": [
                "null", 
                "string"
            ], 
            "id": "sample_name"
        }, 
        {
            "default": 2, 
            "doc": "Ploidy (number of chromosomes) per sample. For pooled data, set to (Number of samples in each pool * Sample Ploidy).", 
            "inputBinding": {
                "prefix": "--sample_ploidy"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "sample_ploidy"
        }, 
        {
            "default": 30.0, 
            "doc": "The minimum phred-scaled confidence threshold at which variants should be called", 
            "inputBinding": {
                "prefix": "--standard_min_confidence_threshold_for_calling"
            }, 
            "type": [
                "null", 
                "double"
            ], 
            "id": "standard_min_confidence_threshold_for_calling"
        }, 
        {
            "default": 30.0, 
            "doc": "The minimum phred-scaled confidence threshold at which variants should be emitted (and filtered with LowQual if less than the calling threshold)", 
            "inputBinding": {
                "prefix": "--standard_min_confidence_threshold_for_emitting"
            }, 
            "type": [
                "null", 
                "double"
            ], 
            "id": "standard_min_confidence_threshold_for_emitting"
        }, 
        {
            "doc": "Use additional trigger on variants found in an external alleles file", 
            "inputBinding": {
                "prefix": "--useAllelesTrigger"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "useAllelesTrigger"
        }, 
        {
            "doc": "Use the contamination-filtered read maps for the purposes of annotating variants", 
            "inputBinding": {
                "prefix": "--useFilteredReadsForAnnotations"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "useFilteredReadsForAnnotations"
        }, 
        {
            "doc": "Ignore warnings about base quality score encoding", 
            "inputBinding": {
                "prefix": "--allow_potentially_misencoded_quality_scores"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "allow_potentially_misencoded_quality_scores"
        }, 
        {
            "doc": "Name of the tool to run", 
            "inputBinding": {
                "prefix": "--analysis_type"
            }, 
            "type": "string", 
            "id": "analysis_type"
        }, 
        {
            "doc": "Compression level to use for writing BAM files (0 - 9, higher is more compressed)", 
            "inputBinding": {
                "prefix": "--bam_compression"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "bam_compression"
        }, 
        {
            "doc": "Type of BAQ calculation to apply in the engine", 
            "inputBinding": {
                "prefix": "--baq"
            }, 
            "type": [
                "null", 
                {
                    "symbols": [
                        "OFF", 
                        "CALCULATE_AS_NECESSARY", 
                        "RECALCULATE"
                    ], 
                    "type": "enum"
                }
            ], 
            "id": "baq"
        }, 
        {
            "default": 40.0, 
            "doc": "BAQ gap open penalty", 
            "inputBinding": {
                "prefix": "--baqGapOpenPenalty"
            }, 
            "type": [
                "null", 
                "double"
            ], 
            "id": "baqGapOpenPenalty"
        }, 
        {
            "doc": "Input covariates table file for on-the-fly base quality score recalibration", 
            "inputBinding": {
                "prefix": "--BQSR"
            }, 
            "type": [
                "null", 
                "File"
            ], 
            "id": "BQSR"
        }, 
        {
            "doc": "Disable both auto-generation of index files and index file locking", 
            "inputBinding": {
                "prefix": "--disable_auto_index_creation_and_locking_when_reading_rods"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "disable_auto_index_creation_and_locking_when_reading_rods"
        }, 
        {
            "doc": "Turn off on-the-fly creation of indices for output BAM/CRAM files.", 
            "inputBinding": {
                "prefix": "--disable_bam_indexing"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "disable_bam_indexing"
        }, 
        {
            "doc": "Disable printing of base insertion and deletion tags (with -BQSR)", 
            "inputBinding": {
                "prefix": "--disable_indel_quals"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "disable_indel_quals"
        }, 
        {
            "doc": "Read filters to disable", 
            "type": [
                "null", 
                {
                    "items": "string", 
                    "inputBinding": {
                        "prefix": "--disable_read_filter"
                    }, 
                    "type": "array"
                }
            ], 
            "id": "disable_read_filter"
        }, 
        {
            "doc": "Target coverage threshold for downsampling to coverage", 
            "inputBinding": {
                "prefix": "--downsample_to_coverage"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "downsample_to_coverage"
        }, 
        {
            "doc": "Fraction of reads to downsample to", 
            "inputBinding": {
                "prefix": "--downsample_to_fraction"
            }, 
            "type": [
                "null", 
                "double"
            ], 
            "id": "downsample_to_fraction"
        }, 
        {
            "doc": "Type of read downsampling to employ at a given locus", 
            "inputBinding": {
                "prefix": "--downsampling_type"
            }, 
            "type": [
                "null", 
                {
                    "symbols": [
                        "NONE", 
                        "ALL_READS", 
                        "BY_SAMPLE"
                    ], 
                    "type": "enum"
                }
            ], 
            "id": "downsampling_type"
        }, 
        {
            "doc": "Emit the OQ tag with the original base qualities (with -BQSR)", 
            "inputBinding": {
                "prefix": "--emit_original_quals"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "emit_original_quals"
        }, 
        {
            "doc": "One or more genomic intervals to exclude from processing", 
            "type": [
                "null", 
                {
                    "items": [
                        "File", 
                        "string"
                    ], 
                    "inputBinding": {
                        "prefix": "--excludeIntervals"
                    }, 
                    "type": "array"
                }
            ], 
            "id": "excludeIntervals"
        }, 
        {
            "doc": "Fix mis-encoded base quality scores", 
            "inputBinding": {
                "prefix": "--fix_misencoded_quality_scores"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "fix_misencoded_quality_scores"
        }, 
        {
            "doc": "GATK key file required to run with -et NO_ET", 
            "inputBinding": {
                "prefix": "--gatk_key"
            }, 
            "type": [
                "null", 
                "File"
            ], 
            "id": "gatk_key"
        }, 
        {
            "doc": "Enable on-the-fly creation of md5s for output BAM files.", 
            "inputBinding": {
                "prefix": "--generate_md5"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "generate_md5"
        }, 
        {
            "default": -1.0, 
            "doc": "Global Qscore Bayesian prior to use for BQSR", 
            "inputBinding": {
                "prefix": "--globalQScorePrior"
            }, 
            "type": [
                "null", 
                "double"
            ], 
            "id": "globalQScorePrior"
        }, 
        {
            "doc": "Interval merging rule for abutting intervals", 
            "inputBinding": {
                "prefix": "--interval_merging"
            }, 
            "type": [
                "null", 
                {
                    "symbols": [
                        "ALL", 
                        "OVERLAPPING_ONLY"
                    ], 
                    "type": "enum"
                }
            ], 
            "id": "interval_merging"
        }, 
        {
            "default": 0, 
            "doc": "Amount of padding (in bp) to add to each interval", 
            "inputBinding": {
                "prefix": "--interval_padding"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "interval_padding"
        }, 
        {
            "doc": "Set merging approach to use for combining interval inputs", 
            "inputBinding": {
                "prefix": "--interval_set_rule"
            }, 
            "type": [
                "null", 
                {
                    "symbols": [
                        "UNION", 
                        "INTERSECTION"
                    ], 
                    "type": "enum"
                }
            ], 
            "id": "interval_set_rule"
        }, 
        {
            "doc": "One or more genomic intervals over which to operate", 
            "type": [
                "null", 
                {
                    "label": "list_of_file_or_string",
                    "items": [
                        "File", 
                        "string"
                    ], 
                    "inputBinding": {
                        "prefix": "--intervals"
                    }, 
                    "type": "array"
                }
            ], 
            "id": "intervals"
        }, 
        {
            "doc": "Keep program records in the SAM header", 
            "inputBinding": {
                "prefix": "--keep_program_records"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "keep_program_records"
        }, 
        {
            "doc": "Set the logging location", 
            "inputBinding": {
                "prefix": "--log_to_file"
            }, 
            "type": [
                "null", 
                "string"
            ], 
            "id": "log_to_file"
        }, 
        {
            "doc": "Set the minimum level of logging", 
            "inputBinding": {
                "prefix": "--logging_level"
            }, 
            "type": [
                "null", 
                "string"
            ], 
            "id": "logging_level"
        }, 
        {
            "default": -1, 
            "doc": "Stop execution cleanly as soon as maxRuntime has been reached", 
            "inputBinding": {
                "prefix": "--maxRuntime"
            }, 
            "type": [
                "null", 
                "long"
            ], 
            "id": "maxRuntime"
        }, 
        {
            "doc": "Unit of time used by maxRuntime", 
            "inputBinding": {
                "prefix": "--maxRuntimeUnits"
            }, 
            "type": [
                "null", 
                {
                    "symbols": [
                        "NANOSECONDS", 
                        "MICROSECONDS", 
                        "MILLISECONDS", 
                        "SECONDS", 
                        "MINUTES", 
                        "HOURS", 
                        "DAYS"
                    ], 
                    "type": "enum"
                }
            ], 
            "id": "maxRuntimeUnits"
        }, 
        {
            "doc": "Enable threading efficiency monitoring", 
            "inputBinding": {
                "prefix": "--monitorThreadEfficiency"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "monitorThreadEfficiency"
        }, 
        {
            "doc": "Always output all the records in VCF FORMAT fields, even if some are missing", 
            "inputBinding": {
                "prefix": "--never_trim_vcf_format_field"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "never_trim_vcf_format_field"
        }, 
        {
            "doc": "Use a non-deterministic random seed", 
            "inputBinding": {
                "prefix": "--nonDeterministicRandomSeed"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "nonDeterministicRandomSeed"
        }, 
        {
            "default": 1, 
            "doc": "Number of CPU threads to allocate per data thread", 
            "inputBinding": {
                "prefix": "--num_cpu_threads_per_data_thread"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "num_cpu_threads_per_data_thread"
        }, 
        {
            "default": 1, 
            "doc": "Number of data threads to allocate to this analysis", 
            "inputBinding": {
                "prefix": "--num_threads"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "num_threads"
        }, 
        {
            "doc": "Pedigree files for samples", 
            "type": [
                "null", 
                {
                    "items": "File", 
                    "inputBinding": {
                        "prefix": "--pedigree"
                    }, 
                    "type": "array"
                }
            ], 
            "id": "pedigree"
        }, 
        {
            "doc": "Pedigree string for samples", 
            "type": [
                "null", 
                {
                    "items": "string", 
                    "inputBinding": {
                        "prefix": "--pedigreeString"
                    }, 
                    "type": "array"
                }
            ], 
            "id": "pedigreeString"
        }, 
        {
            "doc": "Validation strictness for pedigree information", 
            "inputBinding": {
                "prefix": "--pedigreeValidationType"
            }, 
            "type": [
                "null", 
                {
                    "symbols": [
                        "STRICT", 
                        "SILENT"
                    ], 
                    "type": "enum"
                }
            ], 
            "id": "pedigreeValidationType"
        }, 
        {
            "doc": "Write GATK runtime performance log to this file", 
            "inputBinding": {
                "prefix": "--performanceLog"
            }, 
            "type": [
                "null", 
                "File"
            ], 
            "id": "performanceLog"
        }, 
        {
            "doc": "Run reporting mode", 
            "inputBinding": {
                "prefix": "--phone_home"
            }, 
            "type": [
                "null", 
                {
                    "symbols": [
                        "NO_ET", 
                        "AWS", 
                        "STDOUT"
                    ], 
                    "type": "enum"
                }
            ], 
            "id": "phone_home"
        }, 
        {
            "default": 6, 
            "doc": "Don't recalibrate bases with quality scores less than this threshold (with -BQSR)", 
            "inputBinding": {
                "prefix": "--preserve_qscores_less_than"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "preserve_qscores_less_than"
        }, 
        {
            "default": 0, 
            "doc": "Quantize quality scores to a given number of levels (with -BQSR)", 
            "inputBinding": {
                "prefix": "--quantize_quals"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "quantize_quals"
        }, 
        {
            "doc": "Number of reads per SAM file to buffer in memory", 
            "inputBinding": {
                "prefix": "--read_buffer_size"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "read_buffer_size"
        }, 
        {
            "doc": "Filters to apply to reads before analysis", 
            "type": [
                "null", 
                {
                    "items": "string", 
                    "inputBinding": {
                        "prefix": "--read_filter"
                    }, 
                    "type": "array"
                }
            ], 
            "id": "read_filter"
        }, 
        {
            "doc": "Exclude read groups based on tags", 
            "type": [
                "null", 
                {
                    "items": "string", 
                    "inputBinding": {
                        "prefix": "--read_group_black_list"
                    }, 
                    "type": "array"
                }
            ], 
            "id": "read_group_black_list"
        }, 
        {
            "doc": "Reduce NDN elements in CIGAR string", 
            "inputBinding": {
                "prefix": "--refactor_NDN_cigar_string"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "refactor_NDN_cigar_string"
        }, 
        {
            "default": 0, 
            "doc": "Reference window stop", 
            "inputBinding": {
                "prefix": "--reference_window_stop"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "reference_window_stop"
        }, 
        {
            "doc": "Remove program records from the SAM header", 
            "inputBinding": {
                "prefix": "--remove_program_records"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "remove_program_records"
        }, 
        {
            "doc": "Rename sample IDs on-the-fly at runtime using the provided mapping file", 
            "inputBinding": {
                "prefix": "--sample_rename_mapping_file"
            }, 
            "type": [
                "null", 
                "File"
            ], 
            "id": "sample_rename_mapping_file"
        }, 
        {
            "doc": "Emit a log entry (level INFO) containing the full list of sequence data files to be included in the analysis (including files inside .bam.list or .cram.list files).", 
            "inputBinding": {
                "prefix": "--showFullBamList"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "showFullBamList"
        }, 
        {
            "doc": "If provided, output BAM/CRAM files will be simplified to include just key reads for downstream variation discovery analyses (removing duplicates, PF-, non-primary reads), as well stripping all extended tags from the kept reads except the read group identifier", 
            "inputBinding": {
                "prefix": "--simplifyBAM"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "simplifyBAM"
        }, 
        {
            "doc": "Just output sites without genotypes (i.e. only the first 8 columns of the VCF)", 
            "inputBinding": {
                "prefix": "--sites_only"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "sites_only"
        }, 
        {
            "doc": "Use static quantized quality scores to a given number of levels (with -BQSR)", 
            "type": [
                "null", 
                {
                    "items": "int", 
                    "inputBinding": {
                        "prefix": "--static_quantized_quals"
                    }, 
                    "type": "array"
                }
            ], 
            "id": "static_quantized_quals"
        }, 
        {
            "doc": "Tag to identify this GATK run as part of a group of runs", 
            "inputBinding": {
                "prefix": "--tag"
            }, 
            "type": [
                "null", 
                "string"
            ], 
            "id": "tag"
        }, 
        {
            "doc": "Enable unsafe operations: nothing will be checked at runtime", 
            "inputBinding": {
                "prefix": "--unsafe"
            }, 
            "type": [
                "null", 
                {
                    "symbols": [
                        "ALLOW_N_CIGAR_READS", 
                        "ALLOW_UNINDEXED_BAM", 
                        "ALLOW_UNSET_BAM_SORT_ORDER", 
                        "NO_READ_ORDER_VERIFICATION", 
                        "ALLOW_SEQ_DICT_INCOMPATIBILITY", 
                        "LENIENT_VCF_PROCESSING", 
                        "ALL"
                    ], 
                    "type": "enum"
                }
            ], 
            "id": "unsafe"
        }, 
        {
            "doc": "Use the base quality scores from the OQ tag", 
            "inputBinding": {
                "prefix": "--useOriginalQualities"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "useOriginalQualities"
        }, 
        {
            "doc": "How strict should we be with validation", 
            "inputBinding": {
                "prefix": "--validation_strictness"
            }, 
            "type": [
                "null", 
                {
                    "symbols": [
                        "STRICT", 
                        "LENIENT", 
                        "SILENT"
                    ], 
                    "type": "enum"
                }
            ], 
            "id": "validation_strictness"
        }, 
        {
            "default": -1, 
            "doc": "Parameter to pass to the VCF/BCF IndexCreator", 
            "inputBinding": {
                "prefix": "--variant_index_parameter"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "variant_index_parameter"
        }, 
        {
            "doc": "Type of IndexCreator to use for VCF/BCF indices", 
            "inputBinding": {
                "prefix": "--variant_index_type"
            }, 
            "type": [
                "null", 
                {
                    "symbols": [
                        "DYNAMIC_SEEK", 
                        "DYNAMIC_SIZE", 
                        "LINEAR", 
                        "INTERVAL"
                    ], 
                    "type": "enum"
                }
            ], 
            "id": "variant_index_type"
        }, 
        {
            "doc": "Output version information", 
            "inputBinding": {
                "prefix": "--version"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "version"
        }, 
        {
            "doc": "The name of the library to keep, filtering out all others", 
            "inputBinding": {
                "prefix": "--library"
            }, 
            "type": [
                "null", 
                "string"
            ], 
            "id": "library"
        }, 
        {
            "doc": "Filter out reads with no stored bases (i.e. '*' where the sequence should be), instead of failing with an error", 
            "inputBinding": {
                "prefix": "--filter_bases_not_stored"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "filter_bases_not_stored"
        }, 
        {
            "doc": "Filter out reads with mismatching numbers of bases and base qualities, instead of failing with an error", 
            "inputBinding": {
                "prefix": "--filter_mismatching_base_and_quals"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "filter_mismatching_base_and_quals"
        }, 
        {
            "doc": "Filter out reads with CIGAR containing the N operator, instead of failing with an error", 
            "inputBinding": {
                "prefix": "--filter_reads_with_N_cigar"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "filter_reads_with_N_cigar"
        }, 
        {
            "doc": "Minimum read mapping quality required to consider a read for calling", 
            "inputBinding": {
                "prefix": "--min_mapping_quality_score"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "min_mapping_quality_score"
        }, 
        {
            "doc": "Insert size cutoff", 
            "inputBinding": {
                "prefix": "--maxInsertSize"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "maxInsertSize"
        }, 
        {
            "doc": "Allow a read to be filtered out based on having only 1 soft-clipped block. By default, both ends must have a soft-clipped block, setting this flag requires only 1 soft-clipped block.", 
            "inputBinding": {
                "prefix": "--do_not_require_softclips_both_ends"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "do_not_require_softclips_both_ends"
        }, 
        {
            "doc": "Value for which reads with less than this number of aligned bases is considered too short", 
            "inputBinding": {
                "prefix": "--filter_is_too_short_value"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "filter_is_too_short_value"
        }, 
        {
            "doc": "Discard reads with RG:PL attribute containing this string", 
            "type": [
                "null", 
                {
                    "items": "string", 
                    "inputBinding": {
                        "prefix": "--PLFilterName"
                    }, 
                    "type": "array"
                }
            ], 
            "id": "PLFilterName"
        }, 
        {
            "doc": "Discard reads with length greater than the specified value", 
            "inputBinding": {
                "prefix": "--maxReadLength"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "maxReadLength"
        }, 
        {
            "doc": "Discard reads with length shorter than the specified value", 
            "inputBinding": {
                "prefix": "--minReadLength"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "minReadLength"
        }, 
        {
            "doc": "Read name to whitelist", 
            "inputBinding": {
                "prefix": "--readName"
            }, 
            "type": [
                "null", 
                "string"
            ], 
            "id": "readName"
        }, 
        {
            "doc": "Discard reads on the forward strand", 
            "inputBinding": {
                "prefix": "--filterPositive"
            }, 
            "type": [
                "null", 
                "boolean"
            ], 
            "id": "filterPositive"
        }, 
        {
            "doc": "Default read mapping quality to assign to all reads", 
            "inputBinding": {
                "prefix": "--default_mapping_quality"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "default_mapping_quality"
        }, 
        {
            "doc": "Original mapping quality", 
            "inputBinding": {
                "prefix": "--reassign_mapping_quality_from"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "reassign_mapping_quality_from"
        }, 
        {
            "doc": "Desired mapping quality", 
            "inputBinding": {
                "prefix": "--reassign_mapping_quality_to"
            }, 
            "type": [
                "null", 
                "int"
            ], 
            "id": "reassign_mapping_quality_to"
        }, 
        {
            "doc": "The name of the sample(s) to keep, filtering out all others", 
            "type": [
                "null", 
                {
                    "items": "string", 
                    "inputBinding": {
                        "prefix": "--sample_to_keep"
                    }, 
                    "type": "array"
                }
            ], 
            "id": "sample_to_keep"
        }, 
        {
            "doc": "The name of the read group to keep, filtering out all others", 
            "inputBinding": {
                "prefix": "--read_group_to_keep"
            }, 
            "type": [
                "null", 
                "string"
            ], 
            "id": "read_group_to_keep"
        }
    ], 
    "requirements": [
        {
            "class": "ShellCommandRequirement"
        }, 
        {
            "class": "InlineJavascriptRequirement", 
            "expressionLib": [
                "function getFileArgs(f, a){if(a == undefined){return ' ' + f}else{return ':' + a + ' ' + f}}"
            ]
        }, 
        {
            "dockerPull": "gatk:latest", 
            "class": "DockerRequirement"
        }
    ], 
    "outputs": [
        {
            "outputBinding": {
                "glob": "$(inputs.activeRegionOut)"
            }, 
            "type": [
                "null", 
                "File"
            ], 
            "id": "--activeRegionOut"
        }, 
        {
            "outputBinding": {
                "glob": "$(inputs.activityProfileOut)"
            }, 
            "type": [
                "null", 
                "File"
            ], 
            "id": "--activityProfileOut"
        }, 
        {
            "outputBinding": {
                "glob": "$(inputs.bamOutput)"
            }, 
            "type": [
                "null", 
                "File"
            ], 
            "id": "--bamOutput"
        }, 
        {
            "outputBinding": {
                "glob": "$(inputs.graphOutput)"
            }, 
            "type": [
                "null", 
                "File"
            ], 
            "id": "--graphOutput"
        }, 
        {
            "outputBinding": {
                "glob": "$(inputs.out)"
            }, 
            "type": [
                "null", 
                "File"
            ], 
            "id": "--out"
        }
    ], 
    "baseCommand": [
        "java", 
        "-jar", 
        "/gatk/GenomeAnalysisTK.jar"
    ], 
    "id": "HaplotypeCaller", 
    "class": "CommandLineTool"
}