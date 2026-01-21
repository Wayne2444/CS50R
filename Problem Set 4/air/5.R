load("air.RData")

air$emissions <- as.numeric(gsub(",", "", air$emissions))

air <- air |>
  group_by(county) |>
  arrange(desc(emissions)) |>
  slice_head ()

save(air, file = "5.RData")

