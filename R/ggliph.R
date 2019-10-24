#' ggplot of a glyph, via tidygraph.
#'
#' Equivalent to ggraph() tweaked to accept a glyph graph.
#'
#' @param glyph_graph the glyph to plot.
#'
#' @return A gg object ready to accept + geom_node_\* and/or geom_edge_\*.
#' @export

ggliph <- function(glyph_graph){
  ggraph::create_layout(glyph_graph, "manual",
                x = r*sin(angle), y=r*cos(angle)) %>%
    ggraph::ggraph()
}
