load("zelda.RData")

zelda <- zelda |>
  group_by(year) |>
  rename(releases = title) |>
  summarize(releases = n()) |>
  arrange(desc(releases))

save(zelda, file = "2.RData")