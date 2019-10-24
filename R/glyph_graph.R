#' Generates a glyph as a tidygraph object.
#'
#' @param edges - a data.frame, or object coercable to, with the edges for the glyph.
#' @return An (undirected) tidygraph containing those edges.
#'


glyph_graph <- function(edges){
  edges <- tibble::as_tibble(edges)

  tidygraph::tbl_graph(nodes=nodes, edges=edges, directed=F)
}
