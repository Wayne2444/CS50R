flavor <- readline("what flavor would you like? ")
caffeine <- readline("what is your preference for caffeine? ")


if (flavor == "Light" && caffeine == "Yes") {
  print("green tea")
} else if (flavor == "Bold" && caffeine == "Yes") {
  print("black tea")
} else if (flavor == "Light" && caffeine == "No") {
  print("chamomile tea")
} else if (flavor == "Bold" && caffeine == "No") {
  print("rooibos tea")
} else print("please try again")


