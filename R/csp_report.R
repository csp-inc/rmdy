#' Convert to an HTML CSP Report.
#'
#' A CSP Report is a lightweight webpage suitable for sharing.
#' @param toc Generate a Table of Contents? Defaults to TRUE.
#' @param theme Use a theme? Defaults to flatly.
#' @export

csp_report <- function(toc = TRUE, theme = 'flatly', ...) {

  # get the locations of resource files located within the package
  resources_dir <- "rmarkdown/templates/csp_report/resources/"
  css <-
    system.file(file.path(resources_dir, "styles.css"), package = "rmdy")
  header <-
    system.file(file.path(resources_dir, "header.html"), package = "rmdy")
  footer <-
    system.file(file.path(resources_dir, "footer.html"), package = "rmdy")

  # call the base html_document function
  rmarkdown::html_document(toc = toc,
                           theme = theme,
                           css = css,
                           includes = rmarkdown::includes(before_body = header),
                           ...)
}
