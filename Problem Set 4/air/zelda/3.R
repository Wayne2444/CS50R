load("zelda.RData")

zelda <- zelda |>
  mutate(
    year = as.integer(year),
    system = str_squish(system),
    title  = str_squish(title)
  ) |>
  group_by(title) |>
  slice_min(order_by = year, n = 1, with_ties = TRUE) |>
  ungroup() |>
  arrange(year, title, system)

save(zelda, file = "3.RData")


