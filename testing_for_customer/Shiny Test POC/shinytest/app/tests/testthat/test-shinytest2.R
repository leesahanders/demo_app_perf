library(shinytest2)

test_that("{shinytest2} recording: shinytest", {
  app <- AppDriver$new(variant = platform_variant(), name = "shinytest", height = 943, 
      width = 1293)
  app$set_inputs(bins = 17)
  app$set_inputs(bins = 43)
  app$expect_values()
  app$expect_screenshot()
})
