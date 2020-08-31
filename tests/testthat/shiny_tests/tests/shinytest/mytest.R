app <- ShinyDriver$new("../../")
app$snapshotInit("mytest")

app$snapshot()
app$setInputs(input_number = 7)
app$snapshot()
app$setInputs(input_number = 1)
app$snapshot()
