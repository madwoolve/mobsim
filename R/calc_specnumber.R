#' Helper function to report the species numbers in a set of samples
#'
#' This function calculates the species numbers for each sampeling plot or grain size.
#' For the tesselation method or if there are replications, the average species number
#' is reported.
#' The output format is a sites x species number table. The table generated
#' can be further analysed.
#'
#' @param comm Community object from which the samples are generated
#' @param method Available methods are \code{"random", "transect", "grid", "nested", "nonnested", "tesselation"}
#' @param n_steps Number of grain sizes. The smallest grain size is one and doubles with each step.
#' @param n_rep Number of replicated samples in each grain size
#'
#' @return  A vector of numbers of species.
#'
#' @examples
#' library(vegan)
#' sim_com1 <- sim_poisson_community(100, 10000)
#' comm_mat1 <- sample_quadrats(sim_com1, n_quadrats = 100,
#' quadrat_area = 0.002, method = "grid")
#' calc_specnumber(comm_mat1$spec_dat)
#'
#'
#' @export
#'
calc_specnumber <- function(comm, method = "random", n_steps = 7, n_rep = 1) {
  
  # Check if correct input (community data) is provided
  if (class(comm) != "community")
    stop ("comm has to be a community object")
  
  # Check if method is correctly specified (1 string from 6 possibilities)
  method <- match.arg(method, c("random", "transect", "grid",
                                "nested", "nonnested", "tesselation"))
  
  # Calculate the grain sizes from the number of steps provided
  # Smallest grain size is one and doubles with each step
  grain.size <- 2^seq(0, n_steps-1)
  
}
