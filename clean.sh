#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

# LaTeX / latexmk / biber / makeindex / nomencl / endfloat / todonotes outputs.
# Only untracked files (ignored or not) are removed, so the committed PDF is kept.
exts=(aux bbl bcf blg dvi fdb_latexmk fff fls idx ilg ind lof log lot nlo nls out run.xml synctex.gz tdo toc ttt xdv)

git ls-files -z --others -- "${exts[@]/#/*.}" | xargs -0 -r rm -v --
