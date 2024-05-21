#!/bin/bash -euo pipefail
mkdir fastcat_stats
mkdir fastq_chunks

# Save file as compressed fastq
fastcat         -s reads         -f fastcat_stats/per-file-stats.tsv         -i fastcat_stats/per-file-runids.txt         --histograms histograms                           input_src     | if [ "0" = "0" ]; then
    bgzip -@ 4 > fastq_chunks/seqs.fastq.gz
  else
    split -l null -d --additional-suffix=.fastq.gz --filter='bgzip -@ 4 > $FILE' - fastq_chunks/seqs_;
  fi

mv histograms/* fastcat_stats

# get n_seqs from per-file stats - need to sum them up
awk 'NR==1{for (i=1; i<=NF; i++) {ix[$i] = i}} NR>1 {c+=$ix["n_seqs"]} END{print c}'         fastcat_stats/per-file-stats.tsv > fastcat_stats/n_seqs
# get unique run IDs
awk 'NR==1{for (i=1; i<=NF; i++) {ix[$i] = i}} NR>1 {print $ix["run_id"]}'         fastcat_stats/per-file-runids.txt | sort | uniq > fastcat_stats/run_ids
