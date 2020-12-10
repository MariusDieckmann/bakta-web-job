#!/bin/bash

mkdir /data
mkdir /output


/bin/DataStager "$DownloaderEnvConfig"
/entrypoint.sh "$BaktaEnvConfig" -o /output --tmp_dir /cache -t 4
tar -czvf results.tar.gz /output
/bin/DataStager "$UploaderEnvConfig"
