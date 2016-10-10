# load the source code
source("../functions/range-value.R")
source("../functions/missing-values.R")

# context for range value
context("Test for range value")

test_that("x range works as expected", {
  x <- 1:5
  
  expect_equal(range_value(x), 4)
  expect_length(range_value(x), 1)
  expect_type(range_value(x), 'integer')
})

test_that("y range returns NA", {
  y <- c(1:4, NA)
  
  expect_length(range_value(y), 1)
  expect_equal(range_value(y), NA_real_)
})

test_that("y range omits NA", {
  y <- c(1:4, NA)
  
  expect_length(range_value(y, na.rm=TRUE), 1)
  expect_equal(range_value(y, na.rm=TRUE), 3)
})

test_that("z range works with booleans", {
  z <- c(TRUE, FALSE, TRUE)
  
  expect_length(range_value(z), 1)
  expect_type(range_value(z), 'integer')
  expect_equal(range_value(z), 1L)
})

test_that("w range throws error", {
  w <- letters[1:5]
  
  expect_error(range_value(w))
})

# context for missing values
context("Test for missing value")

test_that("missing value outputs are feasible", {
  x <- 1:5
  y <- c(1:4, NA)
  z <- c(TRUE, FALSE, TRUE)
  w <- letters[1:5]
  
  expect_length(missing_values(x), 1)
  expect_length(missing_values(y), 1)
  expect_length(missing_values(z), 1)
  expect_length(missing_values(w), 1)
  expect_type(missing_values(x), "integer")
  expect_type(missing_values(y), "integer")
  expect_type(missing_values(z), "integer")
  expect_type(missing_values(w), "integer")
  expect_gte(missing_values(x), 0)
  expect_gte(missing_values(y), 0)
  expect_gte(missing_values(z), 0)
  expect_gte(missing_values(w), 0)
})


