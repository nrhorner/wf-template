"""Create workflow report."""
import json

from dominate.tags import p
from ezcharts.components import fastcat
from ezcharts.components.reports import labs
from ezcharts.layout.snippets import Tabs
from ezcharts.layout.snippets.table import DataTable
import pandas as pd
import subprocess

from .util import get_named_logger, wf_parser  # noqa: ABS101


def main(args):
    """ Entrypoint """
    # assemble nanoplot command

    cmd = ["NanoPlot"]

    cmd += ["--fastq"]

    if args.stats["n_fastq"] > 1:
        cmd.extend([x for x in args.reads])
    elif args.stats["n_fastq"] == 1:
        cmd += [args.reads]
    else:
        print("ERROR: n_fastq < 1?!?")
        exit(1)

    subprocess.run(cmd)



def argparser():
    """Argument parser for entrypoint."""
    parser = wf_parser("nanoplot")
    parser.add_argument(
        "--reads", nargs='+',
        help="Fastq files")
    parser.add_argument(
        "--stats", nargs='+',
        help="Fastcat per-read stats, ordered as per entries in --metadata.")
    
    return parser
