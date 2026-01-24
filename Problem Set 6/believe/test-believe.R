library(testthat)
source("believe.R")

test_that("'gc_content' counts percent of GC in a given DNA", {
  expect_equal(gc_content("AAAAAAAAA"), "0%")
})

test_that("'gc_content' counts percent of GC in a given DNA", {
  expect_equal(gc_content("GGGGGGG"), "100%")
})

test_that("'gc_content' counts percent of GC in a given DNA", {
  expect_equal(gc_content("ATCGATCGGG"), "60%")
})

test_that("'gc_content' errors on invalid DNA", {
  expect_error(gc_content("SDCX"), "DNA sequence can contain only A, T, C, G.")
})

