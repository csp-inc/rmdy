The __rmdy__ package contains ready-to-use HTML output formats and templates for RMarkdown documents.

### Installation

If you are working within RStudio then you can simply install the [current release](http://www.rstudio.com/ide/download/preview) of RStudio (both the rmarkdown package and pandoc are included).

If you want to use the rmarkdown package outside of RStudio then you can install the package from CRAN as follows:

``` r
devtools::install_github("csp-inc/rmdy")
```

#### Output Formats

An example of the RMarkdown metadata section:

``` yaml
---
title: "Four Forest Restoration Initiative - Landscape Pattern Analysis"
author: "Luke J. Zachmann and Brett G. Dickson"
date: "`r gsub(' 0', ' ', format(Sys.time(), '%B %d, %Y'))`"
abstract: |
    A summary of data products produced for the US Forest Service, including
    links to the data, metadata regarding the accuracy and precision of specific
    results, and guidance for appropriate uses of the data.
bibliography: bibliography.bib
csl: conservation-biology.csl
output:
  rmdy::csp_report:
    template: html_csp
---
```

For a complete example of the rmdy package template in action, head over to https://github.com/lzachmann/4fri-lpa-report. You might also read through RStudio's excellent [documentation](http://rmarkdown.rstudio.com/rmarkdown_websites.html#overview).  
