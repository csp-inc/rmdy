The __rmdy__ package contains ready-to-use HTML output formats and templates for RMarkdown documents.

### Installation

You can install the package directly from this repository using:

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
  rmdy::csp_page:
    template: html_csp
---
```

Calling `rmdy::csp_page` in the front-matter of your document will copy the two
files you will need to render your R Markdown document as a website with a
CSP-flavored navigation bar. Specifically, when you knit the file for the first
time, you'll see `_site.yml` and `_navbar.html` show up in your working
directory.

For a complete example of a __rmdy__ package template in action, head over to https://github.com/lzachmann/4fri-lpa-report. You might also read through
RStudio's excellent [documentation](http://rmarkdown.rstudio.com/rmarkdown_websites.html#overview).  
