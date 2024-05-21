#!/bin/bash -euo pipefail
echo '[
    {
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
    }
]' > metadata.json
    workflow-glue report wf-template-report.html         --versions versions         --stats stats_                  --params params.json         --metadata metadata.json         --wf_version v5.1.3
