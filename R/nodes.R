#' Nodes for any glyph graph
#'
#' Returns a tibble ready to enter a tidygraph object as nodes argument.
#' Nodes hold an index which is referenced in edge creation.

nodes <- tibble::tribble(
  ~index, ~r, ~angle_12,
  "a",0, 0,
  6,1, 2,
  7,1, 4,
  8,1, 8,
  9,1, 10,
  0,2, 0,
  1,2, 2,
  2,2, 4,
  3,2, 6,
  4,2, 8,
  5,2, 10) %>%
  dplyr::mutate(angle = pi*angle_12/6)
