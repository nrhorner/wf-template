#!/bin/bash -euo pipefail
mkdir -p out/reads
    echo '{
    "barcode": null,
    "type": "test_sample",
    "run_ids": [
        "0000000000000000000000000000000000000000"
    ],
    "alias": "reads",
    "group_key": {
        "groupSize": 1,
        "groupTarget": "reads"
    },
    "n_fastq": 1,
    "group_index": [
        "reads_0"
    ],
    "n_seqs": 1000
}' > metamap.json
    mv metamap.json reads/seqs.fastq.gz stats/fastcat_stats  out/reads
