
context("applications")

source("utils.R")


test_succeeds("keras pre-built models can be instantiated", {
  
  skip <- is.na(Sys.getenv("KERAS_TEST_APPLICATIONS", unset = NA)) && 
          is.na(Sys.getenv("KERAS_TEST_ALL", unset = NA))
  if (skip)
    return()
  
  if (is_backend("tensorflow")) {
    application_xception()
    if (have_keras("2.0.5"))
      application_mobilenet()
  }
  application_resnet50()
  application_vgg16()
  application_vgg19()
  application_inception_v3()
})



