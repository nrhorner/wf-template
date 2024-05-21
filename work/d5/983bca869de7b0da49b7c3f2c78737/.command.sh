#!/bin/bash -euo pipefail
python -c "import pysam; print(f'pysam,{pysam.__version__}')" >> versions.txt
fastcat --version | sed 's/^/fastcat,/' >> versions.txt
