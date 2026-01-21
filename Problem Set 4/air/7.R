load("air.RData")

air$emissions <- as.numeric(gsub(",", "", air$emissions))

air <- air |>
  rename (
    source = level_1
  ) |>
  group_by (source, pollutant) |>
  summarize(
    emissions = sum(emissions)
  ) |>
  select (
    source,
    pollutant,
    emissions
  ) |>
  arrange (
    source,
    pollutant
  )

save(air, file = "7.RData")