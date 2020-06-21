context("Check value is within range")
library(powerwash)


test_that("verify_number_range works for positive range", {
  expect_false(verify_number_range(c(-11, 12, 100), lower = 1, upper = 100))
  expect_true(verify_number_range(c(11, 12, 100), lower = 1, upper = 100))
  expect_false(verify_number_range(c(0, 12, 100), lower = 1, upper = 100))
})

test_that("verify_number_range works for negative range", {
  expect_false(verify_number_range(c(-11, 12, 100), lower = -100, upper = -1))
  expect_false(verify_number_range(c(11, 12, 100), lower = -100, upper = -1))
  expect_false(verify_number_range(c(0, 12, 100), lower = -100, upper = -1))
})

test_that("verify_number_range works for mixed range", {
  expect_false(verify_number_range(c(-11, 12, 100), lower = -50, upper = 50))
  expect_false(verify_number_range(c(11, 12, 100), lower = -50, upper = 50))
  expect_false(verify_number_range(c(0, 12, 100), lower = -50, upper = 50))
})
