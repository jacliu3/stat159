source("../functions/regression-functions.R")
context("Testing quality statistic calculations")

# Multiple Regression
reg <- lm(mpg ~ disp + hp, data = mtcars)
regsum <- summary(reg)

# Test cases
test_that("rss is correct", {
  x <- residual_sum_squares(reg)
  expect_equal(x, sum(reg$residuals^2))
  expect_length(x, 1)
  expect_type(x, 'double')
})

# TSS
test_that("tss is correct", {
  x <- total_sum_squares(reg)
  expect_equal(x, sum((mtcars$mpg - mean(mtcars$mpg))^2))
  expect_length(x, 1)
  expect_type(x, 'double')
})

# RSE
test_that("rse is correct", {
  x <- residual_std_error(reg)
  expect_equal(x, regsum$sigma)
  expect_length(x, 1)
  expect_type(x, 'double')
})

# R2
test_that("r2 is correct", {
  x <- r_squared(reg)
  expect_equal(x, regsum$r.squared)
  expect_length(x, 1)
  expect_type(x, 'double')
})

# F-statistic
test_that("f is correct", {
  x <- f_statistic(reg)
  expect_true(x == regsum$fstatistic[1])
  expect_length(x, 1)
  expect_type(x, 'double')
})
