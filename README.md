The __rmdy__ package contains ready-to-use HTML output formats and templates for RMarkdown documents.

### Installation

If you are working within RStudio then you can simply install the [current release](http://www.rstudio.com/ide/download/preview) of RStudio (both the rmarkdown package and pandoc are included).

If you want to use the rmarkdown package outside of RStudio then you can install the package from CRAN as follows:

``` r
devtools::install_github("csp-inc/rmdy")
```

#### Output Formats

In the RMarkdown metadata section

``` yaml
---
title: "Sample Document"
output:
  rmdy::csp_report:
    toc: true
---
```
