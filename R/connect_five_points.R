#' Connect five points into three triangles
#'
#' This function demonstrates a simple approach to connect five 2D points
#' into a set of three triangles. For demonstration purposes only: the triangles
#' here are formed by a fixed (toy) example.
#'
#' @param points A matrix with exactly five rows (x and y coordinates).
#'
#' @return A list with two elements:
#'   \describe{
#'     \item{points}{The original points (matrix).}
#'     \item{edges}{A matrix of edges (each row is a pair of point indices forming an edge).}
#'   }
#'
#' @examples
#' data("sample_points")
#' result <- connect_five_points(sample_points)
#' print(result)
#'
#' @export
connect_five_points <- function(points) {
  if (!is.matrix(points) || nrow(points) != 5 || ncol(points) != 2) {
    stop("`points` must be a 5 x 2 matrix.")
  }

  # Manually define three triangles as a toy example:
  # Triangle 1: points 1, 2, 3
  # Triangle 2: points 2, 3, 4
  # Triangle 3: points 3, 4, 5

  edges <- matrix(c(
    1, 2,
    2, 3,
    3, 1,
    2, 3,
    3, 4,
    4, 2,
    3, 4,
    4, 5,
    5, 3
  ), ncol = 2, byrow = TRUE)

  list(points = points, edges = edges)
}
