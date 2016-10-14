residual_sum_squares <- function(lin.mod) {
  return (sum(lin.mod$residuals^2))
}

total_sum_squares <- function(lin.mod) {
  og.data <- lin.mod$residuals + lin.mod$fitted.values
  y.bar <- mean(og.data)
  return (sum((og.data - y.bar)^2))
}

r_squared <- function(lin.mod) {
  1 - residual_sum_squares(lin.mod) / total_sum_squares(lin.mod)
}

f_statistic <- function(lin.mod) {
  p <- lin.mod$rank - 1
  n <- length(lin.mod$residuals)
  return( ((total_sum_squares(lin.mod) - residual_sum_squares(lin.mod)) / p) / 
            (residual_sum_squares(lin.mod)/(n - p - 1)))
}

residual_std_error <- function(lin.mod) {
  p <- lin.mod$rank - 1
  n <- length(lin.mod$residuals)
  return (sqrt(residual_sum_squares(lin.mod) / (n - p - 1)))
}