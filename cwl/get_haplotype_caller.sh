tmp_folder=`mktemp -d`
curl -L $(python get_latest_release.py) > $tmp_folder/cwl_files.zip
unzip $tmp_folder/cwl_files.zip -d $tmp_folder
cp $tmp_folder/cwl_files/cwl_files_3.5/cwl/HaplotypeCaller.cwl ./HaplotypeCaller.cwl
rm -r $tmp_folder
