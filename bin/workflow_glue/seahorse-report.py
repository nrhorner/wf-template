"""Create big belly seahorse report."""

import pandas as pd
from bokeh.plotting import figure, show

from .util import get_named_logger, wf_parser  # noqa: ABS101

def main(args):
    """Run the entry point."""
    logger = get_named_logger("Report")
    report = labs.LabsReport(
        "Workflow Template Sequencing report", "wf-template",
        args.params, args.versions, args.wf_version)
    
def argparser():
    """Argument parser for entrypoint."""
    parser = wf_parser("report")
    parser.add_argument("report", help="Report output file")
    parser.add_argument(
        "--stats", nargs='+',
        help="Fastcat per-read stats, ordered as per entries in --metadata.")
    return parser
