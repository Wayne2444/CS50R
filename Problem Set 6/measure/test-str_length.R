library(stringr)
library(testthat)


test_that("'str_length' counts the number of characters", {
  expect_equal(str_length("abc"), 3)
})
test_that("'str_length' counts the number of characters", {
  expect_equal(str_length("e!ssdnao1a"), 10)
})
test_that("'str_length' counts the number of characters", {
  expect_equal(str_length("86423)"), 6)
})


test_that("'str_length' counts NA", {
  expect_equal(str_length(NA), NA_integer_)
})


test_that("'str_length' counts vectors", {
  expect_equal(str_length(c("abc", "-123", NA)), c(3,4, NA_integer_))
})
