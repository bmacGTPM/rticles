#' De Gruyter Journal format.
#'
#' This format was adapted from JQAS format, but it
#' should be fairly consistent across DeGruyter journals
#'
#' This package contains a template for writing articles
#' in R Markdown for De Gruyter journals such as Journal of
#' Quantitative Analysis in Sports (JQAS).
#'
#' Files from the "De Gruyter LaTeX Template Download" .zip file
#' from \url{https://www.degruyter.com/view/j/jqas}
#' were used for creating this template.  In particular,
#'
#' \enumerate{
#'   \item \code{skeleton/dgjournal.sty} and \code{skeleton/DeGruyter.bst} from that
#'  \code{.zip} file are used for styling
#'   \item \code{skeleton/preambleDeGruyter.tex} contains a preamble from
#'  the example document \code{dg_template.tex} in that .zip file.
#'  \item The \code{skeleton.rmd} file contains example content copied from \code{dg_template.tex} as well.
#' }
#'
#'
#' Note that for De Gruyter journal submissions,
#' front matter can not be included.
#' Because of this, \code{title:}, \code{author:},
#' and other similar lines are commented out in \code{skeleton.rmd}.
#'
#' In an Arxiv submission, this front matter may be desired.
#' You can choose to knit with the output format \code{pdf_document}
#' instead of \code{pdf_document2},
#' which will not use the \code{dgjournal.sty} styling,
#' and will allow front matter.  The lines with the front matter
#' can be uncommented and they will appear in the .pdf output.
#' Note that the \code{pdf_document} output option has its own
#' preamble file \code{preambleArxiv.tex} which can be modified as desired.
#'
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Arguments to \code{rmarkdown::pdf_document}
#' @return R Markdown output format to pass to \code{\link[rmarkdown:render]{render}}
#' @examples
#' \dontrun{
#' rmarkdown::draft("MyArticle.Rmd", template = "degruyter_article", package = "rticles")
#' }
#'
#' @export
degruyter_article <- function(..., keep_tex = TRUE, citation_package = 'natbib'){
  template <- find_resource("degruyter_article", "template.tex")
  fmt <- inherit_pdf_document(template = template,
                              keep_tex = keep_tex,
                              citation_package = citation_package,
                              ...)
}
