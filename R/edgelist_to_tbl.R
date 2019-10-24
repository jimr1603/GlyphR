#' Converts edgelist (as stored in data) to a tibble with colums ~from, ~to (as required by tidygraph).
#'
#' @param edgelist - single element character vector of edges: abcd means there's an edge from a to b, and from c to d.
#' @export
#'

edgelist_to_tbl <- function(edgelist){
  split <- stringr::str_split(edgelist, "", simplify = F)[[1]]
  from <- split[c(T,F)]
  to <- split[c(F,T)]

  tibble::tibble(from=from, to=to)

}
