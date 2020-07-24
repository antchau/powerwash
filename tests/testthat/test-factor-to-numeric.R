context("Check factor to numeric conversion")
library(powerwash)

test_that("convert_factor_to_numeric convert numbers as characters to numbers", {
  a <- factor(x = c("1", "2"))

  expect_setequal(convert_factor_to_numeric(a), c(1, 2))
})

test_that("convert_factor_to_numeric return NAs for a general character factor", {
  a <- factor(x = c("a", "b"))

  expect_warning(out <- convert_factor_to_numeric(a), "NAs introduced by coercion")
  expect_setequal(out, c(NA, NA))
})


