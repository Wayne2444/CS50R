country_wanted <- readline("Enter name: ")

files<- c(
  "2020.csv",
  "2021.csv",
  "2022.csv",
  "2023.csv",
  "2024.csv"
)

total0 <- 2020

for (f in files) {
  data <- read.csv(f)

  if (country_wanted %in% data$country) {
  total <- sum(data[data$country == country_wanted, -1])
  totalf <- round(total, 2)
  cat(country_wanted," (",total0, "): ", totalf, "\n", sep="")
  total0=total0+1
} else {
  cat(country_wanted," (",total0, "): ", "unavailable", "\n", sep="")
  total0=total0+1
 }
}

