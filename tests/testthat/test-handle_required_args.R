library(testthat)


fun_x <- function(alpha, beta = 17, gamma = NULL, get_arg = FALSE){
  handle_required_args(required_arg = c("alpha", "beta"), get_arg = TRUE)
}

test_that("expect single missing arg", {
  expect_error(fun_x(alpha = 15), "beta")
})

test_that("expect multiple missing arg", {
  expect_error(fun_x(), "alpha.*beta")
})


test_that("expect no plularization", {
  expect_error(fun_x(alpha = 15), "argument")
})

test_that("expect plularization", {
  expect_error(fun_x(), "arguments")
})


test_that("expect values", {
  expect_snapshot(fun_x(alpha = 15, beta = 16, get_arg = TRUE))
})

# try_symb <-  13
# fun_x(alpha = try_symb, beta = 15, get_arg = TRUE)
# #
# test_that("expect symbol eval", {
#   try_symb <-  13
#   # expected_symbol <- fun_x(alpha = try_symb, beta = 15, get_arg = TRUE)
#   expect_success(fun_x(alpha = try_symb, beta = 15, get_arg = TRUE))
# })

# expect_snapshot(fun_x(alpha = 15, beta = 16, get_arg = TRUE)
#
# as.character(unlist((fun_x(alpha = 15, beta = 16, get_arg = TRUE))))
#
# fun_x(a = 15, b = 16, get_arg = TRUE)
# fun_x()
