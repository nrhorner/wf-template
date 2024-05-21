#!/bin/bash -euo pipefail
mkdir -p out/multiome
    echo '{
    "barcode": null,
    "type": "test_sample",
    "run_ids": [
        "30fb0112bebade71eb63b50be0d9551e96212bf8"
    ],
    "alias": "multiome",
    "group_key": {
        "groupSize": 1,
        "groupTarget": "multiome"
    },
    "n_fastq": 1,
    "group_index": [
        "multiome_0"
    ],
    "n_seqs": 4970
}' > metamap.json
    mv metamap.json reads/seqs.fastq.gz stats/fastcat_stats  out/multiome
