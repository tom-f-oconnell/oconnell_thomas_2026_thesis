#!/usr/bin/env bash

# TODO easier to rename to main.tex / output.tex?
docker run --rm --user "$(id -u):$(id -g)" -v "$PWD":/work -w /work texlive/texlive:TL2025-historic \
  latexmk -pdf -interaction=nonstopmode -file-line-error oconnell_thomas_2026.tex

# overleaf snapshot i had been using is (from .log):
#  This is pdfTeX, Version 3.141592653-2.6-1.40.27 (TeX Live 2025)
#   (preloaded format=pdflatex 2025.10.  27)  15 OCT 2026 22:46
#
# with packages (from .log after \listfiles in preamble):
# caltech_thesis.cls    2021/05/05 v0.4 Caltech thesis class
#   memoir.cls    2025/03/10 v3.8.3b configurable book, report, article document class
#   xpatch.sty    2020/03/25 v0.3a Extending etoolbox patching commands
#    expl3.sty    2025-05-26 L3 programming layer (loader)
# l3backend-pdftex.def    2025-04-14 L3 backend support: PDF output (pdfTeX)
#   xparse.sty    2024-08-16 L3 Experimental document command parser
# etoolbox.sty    2025/02/11 v2.5l e-TeX tools for LaTeX (JAW)
#    iftex.sty    2024/12/12 v1.0g TeX engine tests
#    mem12.clo    2022/07/29 v0.5 memoir class 12pt size option
#    array.sty    2025/06/08 v2.6j Tabular extension package (FMi)
#  dcolumn.sty    2023/07/08 v1.06 decimal alignment package (DPC)
# delarray.sty    2014/10/28 v1.01 array delimiter package (DPC)
# tabularx.sty    2023/12/11 v2.12a `tabularx' package (DPC)
# booktabs.sty    2020/01/12 v1.61803398 Publication quality tables
#  nameref.sty    2023-11-26 v2.56 Cross-referencing by name of section
# refcount.sty    2019/12/15 v3.6 Data extraction from label references (HO)
#  ltxcmds.sty    2023-12-04 v1.26 LaTeX kernel commands for general use (HO)
# infwarerr.sty    2019/12/03 v1.5 Providing info/warning/error messages (HO)
# gettitlestring.sty    2019/12/15 v1.6 Cleanup title references (HO)
# kvoptions.sty    2022-06-15 v3.15 Key value format for package options (HO)
#   keyval.sty    2022/05/29 v1.15 key=value parser (DPC)
# kvsetkeys.sty    2022-10-05 v1.19 Key value parser (HO)
# verbatim.sty    2024-01-22 v1.5x LaTeX2e package for verbatim enhancements
# shortvrb.sty    2024/12/25 v3.0q Standard LaTeX documentation package V3 (FMi)
# textcase.sty    2025/02/16 v1.05 Text only upper/lower case changing (DPC)
# geometry.sty    2020/01/02 v5.9 Page Geometry
#   ifvtex.sty    2019/10/25 v1.7 ifvtex legacy package. Use iftex instead.
# graphicx.sty    2024/12/31 v1.2e Enhanced LaTeX Graphics (DPC,SPQR)
# graphics.sty    2024/08/06 v1.4g Standard LaTeX Graphics (DPC,SPQR)
#     trig.sty    2023/12/02 v1.11 sin cos tan (DPC)
# graphics.cfg    2016/06/04 v1.11 sample graphics configuration
#   pdftex.def    2024/04/13 v1.2c Graphics/color driver for pdftex
#      url.sty    2013/09/16  ver 3.4  Verb mode for urls, etc.
# hyperref.sty    2025-05-20 v7.01m Hypertext links for LaTeX
# kvdefinekeys.sty    2019-12-19 v1.6 Define keys (HO)
# pdfescape.sty    2019/12/09 v1.15 Implements pdfTeX's escape features (HO)
# pdftexcmds.sty    2020-06-27 v0.33 Utility functions of pdfTeX for LuaTeX (HO)
#  hycolor.sty    2020-01-27 v1.10 Color options for hyperref/bookmark (HO)
# stringenc.sty    2019/11/29 v1.12 Convert strings between diff. encodings (HO)
#   pd1enc.def    2025-05-20 v7.01m Hyperref: PDFDocEncoding definition (HO)
#  intcalc.sty    2019/12/15 v1.3 Expandable calculations with integers (HO)
#    puenc.def    2025-05-20 v7.01m Hyperref: PDF Unicode definition (HO)
#   bitset.sty    2019/12/09 v1.3 Handle bit-vector datatype (HO)
# bigintcalc.sty    2019/12/15 v1.5 Expandable calculations on big integers (HO)
# atbegshi-ltx.sty    2021/01/10 v1.0c Emulation of the original atbegshi
# package with kernel methods
#  hpdftex.def    2025-05-20 v7.01m Hyperref driver for pdfTeX
# rerunfilecheck.sty    2022-07-10 v1.10 Rerun checks for auxiliary files (HO)
# atveryend-ltx.sty    2020/08/19 v1.0a Emulation of the original atveryend package
# with kernel methods
# uniquecounter.sty    2019/12/15 v1.4 Provide unlimited unique counter (HO)
# memhfixc.sty    2025/03/06 v1.23 hyperref package fixes for memoir class
#  xstring.sty    2023/08/22 v1.86 String manipulations (CT)
# letterspace.sty    2025/02/11 v3.2a Robust letterspacing (RS)
#  nomencl.sty    2021/11/10 v5.6 Nomenclature package
#  xkeyval.sty    2022/06/16 v2.9 package option processing (HA)
#  xkeyval.tex    2014/12/03 v2.7a key=value parser (HA)
#   ifthen.sty    2024/03/16 v1.1e Standard LaTeX ifthen package (DPC)
# tocbasic.sty    2025/06/04 v3.45 KOMA-Script package (handling toc-files)
#  scrbase.sty    2025/06/04 v3.45 KOMA-Script package (KOMA-Script-independent basics and keyval usage)
# scrlfile.sty    2025/06/04 v3.45 KOMA-Script package (file load hooks)
# scrlfile-hook.sty    2025/06/04 v3.45 KOMA-Script package (using LaTeX hooks)
#  scrlogo.sty    2025/06/04 v3.45 KOMA-Script package (logo)
# imakeidx.sty    2016/10/15 v1.3e Package for typesetting indices in a synchronous mode
#  ifxetex.sty    2019/10/25 v0.7 ifxetex legacy package. Use iftex instead.
# ifluatex.sty    2019/10/25 v1.5 ifluatex legacy package. Use iftex instead.
# multicol.sty    2025/05/25 v2.0a multicolumn formatting (FMi)
# endnotes.sty    2020-01-02 endnotes package
#    float.sty    2001/11/08 v1.3d Float enhancements (AL)
# todonotes.sty    2024/01/05
#   xcolor.sty    2024/09/29 v3.02 LaTeX color extensions (UK)
#    color.cfg    2016/01/02 v1.6 sample color configuration
# mathcolor.ltx
#     tikz.sty    2023-01-15 v3.1.10 (3.1.10)
#      pgf.sty    2023-01-15 v3.1.10 (3.1.10)
#   pgfrcs.sty    2023-01-15 v3.1.10 (3.1.10)
# pgfrcs.code.tex
#  pgfcore.sty    2023-01-15 v3.1.10 (3.1.10)
#   pgfsys.sty    2023-01-15 v3.1.10 (3.1.10)
# pgfsys.code.tex
# pgfsyssoftpath.code.tex    2023-01-15 v3.1.10 (3.1.10)
# pgfsysprotocol.code.tex    2023-01-15 v3.1.10 (3.1.10)
# pgfcore.code.tex
# pgfcomp-version-0-65.sty    2023-01-15 v3.1.10 (3.1.10)
# pgfcomp-version-1-18.sty    2023-01-15 v3.1.10 (3.1.10)
#   pgffor.sty    2023-01-15 v3.1.10 (3.1.10)
#  pgfkeys.sty
# pgfkeys.code.tex
#  pgfmath.sty
# pgfmath.code.tex
# pgffor.code.tex
# tikz.code.tex
#     calc.sty    2025/03/01 v4.3b Infix arithmetic (KKT,FJ)
# inputenc.sty    2024/02/08 v1.3d Input encoding file
#  fontenc.sty    2024/12/21 v2.1c Standard LaTeX package
# newtxtext.sty    2024/04/01 v1.744(Michael Sharpe) latex and unicode latex support for TeXGyreTermesX
# textcomp.sty    2024/04/24 v2.1b Standard LaTeX package
# scalefnt.sty
#   binhex.tex
# fontaxes.sty    2025-05-24 v2.0.1 Font selection axes (deprecated)
# figureversions.sty    2025-04-29 v1.0.1 Figure versions
# newtxmath.sty    2024/09/22 v1.754
#  amsmath.sty    2025/05/18 v2.17x AMS math features
#  amstext.sty    2024/11/17 v2.01 AMS text
#   amsgen.sty    1999/11/30 v2.0 generic functions
#   amsbsy.sty    1999/11/29 v1.2d Bold Symbols
#   amsopn.sty    2022/04/08 v2.04 operator names
# centernot.sty    2016/05/16 v1.4 Centers the not symbol horizontally (HO)
#   binhex.tex
# adjustbox.sty    2025/02/26 v1.3c Adjusting TeX boxes (trim, clip, ...)
#  adjcalc.sty    2012/05/16 v1.1 Provides advanced setlength with multiple back-ends (calc, etex, pgfmath)
# trimclip.sty    2025/02/21 v1.2a Trim and clip general TeX material
# collectbox.sty    2022/10/17 v0.4c Collect macro arguments as boxes
# tc-pdftex.def    2025/02/26 v2.3 Clipping driver for pdftex
# ifoddpage.sty    2022/10/18 v1.2 Conditionals for odd/even page detection
# varwidth.sty    2009/03/30 ver 0.92;  Variable-width minipages
# multirow.sty    2024/11/12 v2.9 Span multiple rows of a table
# makecell.sty    2009/08/03 V0.1e Managing of Tab Column Heads and Cells
# pdflscape.sty    2022-10-27 v0.13 Display of landscape pages in PDF
# pdflscape-nometadata.sty    2022-10-28 v0.13 Display of landscape pages in PDF (HO)
#   lscape.sty    2020/05/28 v3.02 Landscape Pages (DPC)
# longtable.sty    2024-12-18 v4.23 Multi-page Table package (DPC)
# collcell.sty    2025/02/21 v0.6 Collect the content of a tabular cell
# arydshln.sty    2019/02/21 v1.76
#  siunitx.sty    2025-05-22 v3.4.12 A comprehensive (SI) units package
# translations.sty    2022/02/05 v1.12 internationalization of LaTeX2e packages (CN)
#   mhchem.sty    2024/01/29 v4.10 for typesetting chemical formulae
# l3keys2e.sty    2024-08-16 LaTeX2e option processing using LaTeX3 keys
# chemgreek.sty    2020/01/16 v1.1a interface for upright Greek letters for use in chemistry (CN)
#  chemfig.sty    2023/12/28 v1.66 Draw molecule with an easy syntax (CT)
# mol2chemfig.sty    2019/11/24 v1.5
#   twoopt.sty    2016/05/16 v1.6 Definitions with two optional arguments (HO)
#       bm.sty    2023/12/19 v1.2f Bold Symbol Support (DPC/FMi)
# mathtools.sty    2024/10/04 v1.31 mathematical typesetting tools
#  mhsetup.sty    2021/03/18 v1.4 programming setup (MH)
#  ifdraft.sty    2016/05/16 v1.4 Detect class options draft and final (HO)
#  silence.sty    2012/07/02 v1.5b Selective filtering of warnings and error messages
# biblatex.sty    2024/03/21 v3.20 programmable bibliographies (PK/MW)
#   logreq.sty    2010/08/04 v1.0 xml request logger
#   logreq.def    2010/08/04 v1.0 logreq spec v1.0
#   blx-dm.def    2024/03/21 v3.20 biblatex datamodel (PK/MW)
# blx-compat.def    2024/03/21 v3.20 biblatex compatibility (PK/MW)
# biblatex.def    2024/03/21 v3.20 biblatex compatibility (PK/MW)
# blx-natbib.def    2024/03/21 v3.20 biblatex compatibility (PK/MW)
# standard.bbx    2024/03/21 v3.20 biblatex bibliography style (PK/MW)
#  numeric.bbx    2024/03/21 v3.20 biblatex bibliography style (PK/MW)
# numeric-comp.bbx    2024/03/21 v3.20 biblatex bibliography style (PK/MW)
# tom-modified-nature.bbx    2026-05-22 v1.3f biblatex bibliography style
# authoryear.cbx    2024/03/21 v3.20 biblatex citation style (PK/MW)
# biblatex.cfg
# blx-case-expl3.sty    2024/03/21 v3.20 expl3 case changing code for biblatex
# endfloat.sty    2019/04/15 v2.7 LaTeX2e package puts figures and tables at end (jdm)
# letltxmacro.sty    2019/12/03 v1.6 Let assignment for LaTeX macros (HO)
#  caption.sty    2023/08/05 v3.6o Customizing captions (AR)
# caption3.sty    2023/07/31 v2.4d caption3 kernel (AR)
# caption-memoir.sto    2023/09/08 v2.2c Adaption of the caption package to the memoir document class (AR)
# ltcaption.sty    2021/01/08 v1.4c longtable captions (AR)
# placeins.sty    2005/04/18  v 2.2
# cleveref.sty    2018/03/27 v0.21.4 Intelligent cross-referencing
# t1ntxtlf.fd    2021/05/24 v1.1 font definition file for T1/ntx/tlf
# omlntxmi.fd    2015/08/25 Fontinst v1.933 font definitions for OML/ntxmi.
#  untxexa.fd    2012/04/16 Fontinst v1.933 font definitions for U/ntxexa.
# lmsntxsy.fd    2016/07/02 Fontinst v1.933 font definitions for LMS/ntxsy.
# lmxntxexx.fd    2016/07/03 Fontinst v1.933 font definitions for LMX/ntxexx.
# supp-pdf.mkii
# epstopdf-base.sty    2020-01-24 v2.11 Base part for package epstopdf
#   grfext.sty    2019/12/03 v1.3 Manage graphics extensions (HO)
# epstopdf-sys.cfg    2010/07/13 v1.3 Configuration of (r)epstopdf for TeX Live
#   output.out
#   output.out
# translations-basic-dictionary-english.trsl    (english translation file `translations-basic-dictionary')
#  english.lbx    2024/03/21 v3.20 biblatex localization (PK/MW)
#   output.bbl
#  caltech.png    Graphic file (type png)
# ts1ntxtlf.fd    2015/01/18 v1.0 fd file for TS1/ntxtlf
# ot1minntx.fd    2023/09/09 v1.1 font definition file for OT1/minntx
#  untxmia.fd    2024/04/09 Fontinst v1.933 font definitions for U/ntxmia.
#  untxsym.fd    2023/08/16 Fontinst v1.933 font definitions for U/ntxsym.
#  untxsyc.fd    2012/04/12 Fontinst v1.933 font definitions for U/ntxsyc.
#   output.nls
