context("Check shared column names")
library(powerwash)

test_that("get_join_keys work for multiple data frames", {
  example_dfs <- list(data.frame(a = 1, b = 2), data.frame(b = 2, c = 3))

  expect_setequal(get_join_keys(example_dfs), c("b"))
})

test_that("get_join_keys work for 1 data frame", {
  example_dfs <- list(data.frame(a = 1, b = 2))

  expect_setequal(get_join_keys(example_dfs), c("a", "b"))
})
