#!/bin/bash

mkdir /data
mkdir /output

echo $DownloaderEnvConfig

eval "/bin/DataStager $DownloaderEnvConfig"
/entrypoint.sh "$BaktaEnvConfig" -o /output --tmp-dir /cache -t 4
tar -czvf results.tar.gz /output
eval "/bin/DataStager $UploaderEnvConfig"
