source("teahouse.R")


breakfast <- readline("what breakfast would you like? ")
water <- readline("what is your preference for water? ")


if (breakfast == "Fish" && water == "Salted") {
  print("good choice")
} else if (breakfast == "Fish" && water == "Sugary") {
  print("sounds good")
} else if (breakfast == "Chicken" && water == "Salted") {
  print("great")
} else if (breakfast == "Chicken" && water == "Sugary") {
  print("nice")
} else print("please try again")
