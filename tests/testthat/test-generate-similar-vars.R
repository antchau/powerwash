context("Generate Similar Variable Names")
library(powerwash)

test_that("generate_similar_vars works with single element input for base_exp", {
  month_vars <- c("t1_month1", "t1_month2", "t1_month3", "t1_month4", "t1_month5", "t1_month6",
                  "t1_month7", "t1_month8", "t1_month9", "t1_month10", "t1_month11", "t1_month12")

  expect_setequal(generate_similar_vars(base_exp = "t1_month", affix = 1:12, suffix = TRUE), month_vars)
})


test_that("generate_similar_vars works with a vector input for base_exp", {
  base_month_exps <- c("t0_month", "t1_month")
  month_vars <- c("t0_month1", "t0_month2", "t0_month3", "t0_month4", "t0_month5", "t0_month6",
                  "t0_month7", "t0_month8", "t0_month9", "t0_month10", "t0_month11", "t0_month12",
                  "t1_month1", "t1_month2", "t1_month3", "t1_month4", "t1_month5", "t1_month6",
                  "t1_month7", "t1_month8", "t1_month9", "t1_month10", "t1_month11", "t1_month12")

  expect_setequal(generate_similar_vars(base_exp = c("t0_month", "t1_month"), affix = 1:12, suffix = TRUE), month_vars)
})

test_that("generate_similar_vars works with NULL values for prefix and suffix", {
  base_month_exps <- c("t0_month", "t1_month")
  month_vars <- c("t0_month1", "t0_month2", "t0_month3", "t0_month4", "t0_month5", "t0_month6",
                  "t0_month7", "t0_month8", "t0_month9", "t0_month10", "t0_month11", "t0_month12",
                  "t1_month1", "t1_month2", "t1_month3", "t1_month4", "t1_month5", "t1_month6",
                  "t1_month7", "t1_month8", "t1_month9", "t1_month10", "t1_month11", "t1_month12")

  expect_setequal(generate_similar_vars(base_exp = c("t0_month", "t1_month"), affix = 1:12), month_vars)
})
