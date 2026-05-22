#!/bin/bash

set -e

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
    exit 1
fi

EXP_DIR=$1

if [[ ! -d $EXP_DIR ]]
then
    echo "Not a directory: $EXP_DIR"
    exit 1
fi

cd $EXP_DIR

find . -name "latest" -delete || :
find . -type d -name "mlif" -exec rm -r "{}" \; || :
find . -type d -name "sess*" -exec rm -r "{}" \; || :
find . -type d -name "logs" -exec rm -r "{}" \; || :
find . -type f -name "*_instrs.log" -delete || :
find . -type f -name "*.map" -delete || :
find . -type f -name "*.dump" -delete || :
find . -type f -name "*.srcdump" -delete || :
find . -type f -name "*_out.log" -delete || :
find . -type d -name "*%bb*" -exec rm -r "{}" \; || :
find . -type d -name "gen_model" -exec rm -r "{}" \; || :
find . -type d -name "gen_output" -exec rm -r "{}" \; || :
find . -type f -name "*.m2isarmodel" -delete || :
find . -type d -name "*_per_instr*" -exec rm -r "{}" \; || :
find . -type d -name "seal5" -exec rm -rf "{}" \; || :
find . -type d -name "temp" -exec rm -rf "{}" \; || :
# find . -type d -name "output" -exec rm -rf "{}" \; || :
find . -type d -name "etiss_install" -exec rm -rf "{}" \; || :
find . -type d -name "etiss_perf_install" -exec rm -rf "{}" \; || :
find . -type f -name "etiss_source.zip" -delete || :
find . -type d -name "run_*_mem*" -exec rm -rf "{}" \; || :
find . -type d -name "run_compare_*" -exec rm -rf "{}" \; || :
