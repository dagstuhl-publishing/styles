OASIcs Editor Style - CHANGELOG

* 11/05/2023 oasicsmaster-v2021 v3.1.3
  * Bugfix
      * changed order of loading hyperxmp and hyperref to avoid minor bug when using lastest version of hyperxmp

* 25/06/2021 oasicsmaster-v2021 v3.1.2
    * New Feature
        * added support to modify logo height (EventLogoHeight)

* 25/02/2021 oasicsmaster-v2021 v3.1.1
  * Bugfix
        * exchanged OASIcs logos to ensure PDF/A compliance

* 04/01/2021 oasicsmaster-v2021 v3.1.0
    * New feature
        * added documentclass option pdfa to explicitly enable generation of PDF according PDF/A standard
    * Bugfix
        * fixed problems when using old versions of hyperxmp package (This fixes #11)

* 09/12/2020 oasicsmaster-v2021 v3.0.1
    * Bugfix
        * fixed bug related to unavailable sRGB.icc (This fixes #10)

* 01/12/2020 oasicsmaster-v2021 v3.0
    * New Feature
        * adjustment of document licence to CC-BY 4.0
        * added support to produce PDFs according PDF/A-3B standard

* 22/07/2019 oasicsmaster-v2019 v2.2
    * New feature
        * added document option "editorcolumns" to activate displaying author details in two columns (only allowed for more than 4 editors)

* 02/05/2019 oasicsmaster-v2019 v2.1
    * Bugfixes
        * fixed bug in definition of ccsdesc macro
    * New feature
        * support of metadata in PDF file (e.g. author, title, keywords)
        * moved ORCID symbol behind editor name  

* 02/11/2018 oasicsmaster-v2019 v2.0
    * New Features
        * added macros for all mandatory metadata fields (like series, volume, or ACM class.), that are printed at the correct position in the frontmatter
        * introduced editor macro
    * Bugfixes
        * fixed problems with using of ACM 2012 classification (deactivated subjclass and revised support of ccsdesc macro)
    * Minor changes
        * preloaded package 'microtype' in style
        * switched several URL from http to https
