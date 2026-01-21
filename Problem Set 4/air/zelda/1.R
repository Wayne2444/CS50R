zelda <- read.csv("zelda.csv")

zelda <- zelda |>
  mutate(
    role = str_to_lower(role),
    year = str_split(release, "-", simplify = TRUE) [, 1],
    system = str_split(release, "-", simplify = TRUE) [, 2]
  ) |>
  pivot_wider(
  id_cols = c(title, year, system),
  names_from = role,
  values_from = names
) |>
  as_tibble()

save(zelda, file = "zelda.RData")

