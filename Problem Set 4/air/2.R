load("air.RData")

air$emissions <- as.numeric(gsub(",", "", air$emissions))

air <- air |>
  arrange(desc(emissions))

save(air, file = "2.RData")
