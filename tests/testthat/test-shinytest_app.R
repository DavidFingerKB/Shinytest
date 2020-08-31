context("frontend test app")
# This file is for testing the applications in the apps/ directory.

library(shinytest)


test_that(
  "shinytests",
  {
    # Don't run these tests on the CRAN build servers
    # shinytest::
    testthat::skip_on_cran()
    
    # Use compareImages=FALSE because the expected image screenshots were created
    # on a Mac, and they will differ from screenshots taken on the CI platform,
    # which runs on Linux.
    shinytest::expect_pass(shinytest::testApp(appDir = "shiny_tests",compareImages = FALSE))
  }
)
