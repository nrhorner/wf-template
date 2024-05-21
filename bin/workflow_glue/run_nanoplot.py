"""Run Nanoplot."""

import subprocess

from .util import get_named_logger, wf_parser  # noqa: ABS101


def main(args):
    """ Entrypoint """
    # assemble nanoplot command

    cmd = f"NanoPlot --fastq {args.reads[0]}"

    # run nanoplot
    subprocess.run(cmd, shell=True)



def argparser():
    """Argument parser for entrypoint."""
    parser = wf_parser("nanoplot")
    parser.add_argument(
        "--meta", nargs='+',
        help="metadata")
    parser.add_argument(
        "--reads", nargs='+',
        help="Fastq files")
    parser.add_argument(
        "--stats", nargs='+',
        help="Fastcat per-read stats, ordered as per entries in --metadata.")
    
    return parser
