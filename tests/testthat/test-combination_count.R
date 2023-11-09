test_that("multiplication works", {
  expect_equal(combination_count(5, 2), 10)
  expect_equal(combination_count(0, 0), 1)
  expect_equal(combination_count(10, 10), 1)
  expect_equal(combination_count(99, 0), 1)
  expect_equal(combination_count(30, 3), ncol(combn(30, 3)))
})
