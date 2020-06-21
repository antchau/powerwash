context("Count number of missing values")
library(powerwash)

test_that("count_number_missing works for lists", {
  expect_equal(count_number_missing(list(1, NA, 2)), 1)
})

test_that("count_number_missing works for vectors", {
  expect_equal(count_number_missing(c(1, NA, 2)), 1)
})

test_that("count_number_missing works for data frames", {
  expect_equal(count_number_missing(data.frame(x = c(1, NA), y = c(NA, 2))), 2)
})

test_that("count_number_missing does not treat NULL as missing", {
  expect_equal(count_number_missing(list(1, NULL, 2)), 0)
  expect_equal(count_number_missing(c(1, NULL, 2)), 0)
  expect_equal(count_number_missing(data.frame(x = c(1, NULL), y = c(NULL, 2))), 0)
})
