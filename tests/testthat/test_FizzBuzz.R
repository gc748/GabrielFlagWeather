test_that('FizzBuzz', {
  expect_equal(length(FizzBuzz(5)), 5)
  expect_error(FizzBuzz(-5))
  expect_error(FizzBuzz(0))
  expect_error(FizzBuzz(inf))
})
