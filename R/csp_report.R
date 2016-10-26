#' Convert to an HTML CSP Report.
#'
#' A CSP Report is a lightweight webpage suitable for sharing.
#' @param toc Generate a Table of Contents? Defaults to \code{true}.
#' @param theme Visual theme. Defaults to \code{flatly}. Other good options may
#' include \code{journal}, \code{united}, \code{sandstone}, or \code{yeti}.
#' @param highlight Syntax highlighting style. Defaults to \code{tango}. Pass
#' \code{NULL} to prevent syntax highlighting.
#' @param smart Produce typographically correct output, converting straightquotes
#' to curly quotes, --- to em-dashes, -- to en-dashes, and ... to ellipses?
#' Defaults to \code{true}.
#' @param template Pandoc template to use for rendering. Defaults to the
#' rmarkdown package default template. Alternatively, pass \code{html_csp} to
#' use the rmdy package template .
#' @export

csp_report <- function(toc = TRUE, smart = TRUE, theme = "flatly",
                       highlight = "tango", template = "default", ...) {

  # get the locations of resource files located within the package
  resources_dir <- "rmarkdown/templates/csp_report/skeleton"
  if (template=="html_csp")
    template <- system.file(file.path(resources_dir, "default_fork.html"),
                            package = "rmdy")
  css <-
    system.file(file.path(resources_dir, "styles.css"), package = "rmdy")
  header <-
    system.file(file.path(resources_dir, "header.html"), package = "rmdy")
  footer <-
    system.file(file.path(resources_dir, "footer.html"), package = "rmdy")

  # call the base html_document function
  rmarkdown::html_document(toc = toc,
                           smart = TRUE,
                           theme = theme,
                           highlight = highlight,
                           template = template,
                           css = css,
                           includes = rmarkdown::includes(in_header = header,
                                                          after_body = footer),
                           ...)
}
