#!/bin/bash -euo pipefail
# Output nextflow params object to JSON
    echo '{
    "help": false,
    "version": false,
    "fastq": "test_data/reads.fastq.gz",
    "bam": null,
    "out_dir": "output",
    "sample": null,
    "sample_sheet": null,
    "client_fields": null,
    "aws_image_prefix": null,
    "aws_queue": null,
    "disable_ping": false,
    "analyse_unclassified": false,
    "watch_path": false,
    "fastq_chunk": null,
    "monochrome_logs": false,
    "validate_params": true,
    "show_hidden_params": false,
    "schema_ignore_params": "show_hidden_params,validate_params,monochrome_logs,aws_queue,aws_image_prefix,wf",
    "wf": {
        "fastcat_stats": true,
        "bamstats": true,
        "keep_unaligned": false,
        "return_fastq": false,
        "per_read_stats": false,
        "example_cmd": [
            "--fastq 'wf-template-demo/test_data/reads.fastq.gz'"
        ],
        "common_sha": "sha91cd87900c86f05bf36d8c77b841b8fda5ecf3aa",
        "agent": null,
        "epi2me_instance": null,
        "epi2me_user": null
    }
}' > params.json
