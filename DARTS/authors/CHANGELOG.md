DARTS Style - CHANGELOG

* 11/05/2023 darts-v2021 v3.1.2
  * Bugfix
      * changed order of loading hyperxmp and hyperref to avoid minor bug when using lastest version of hyperxmp

* 06/06/2021 darts-v2021 v3.1.1
    * New feature
        * added support for eventlogo in footer
    * Bugfix
        * disabled loading of glyphtounicode by default to increase support with old LaTeX environments

* 04/01/2021 darts-v2021 v3.1.0
    * New feature
        * added documentclass option pdfa to explicitly enable generation of PDF according PDF/A standard
    * Bugfix
        * fixed problems when using old versions of hyperxmp package (This fixes #11)

* 09/12/2020 darts-v2021 v3.0.1
    * Bugfix
        * fixed bug related to unavailable sRGB.icc (This fixes #10)

* 01/12/2020 darts-v2021 v3.0.0
    * New Feature
        * more compact presentation of author information (email address and homepage URL only as logo)
        * adjustment of document licence to CC-BY 4.0
        * added anonymization (documentclass option "anonymous") also for \relatedarticle
        * added new macro \flag to display a flag or logo near the funding information as requested by some funding agencies (e.g. ERC grant)
        * added support to produce PDFs according PDF/A-3B standard
