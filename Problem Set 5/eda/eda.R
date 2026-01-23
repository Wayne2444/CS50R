library(ggplot2)
library(tidyverse)

Berkshire <- read_csv("BRK_B_year_PB_and_annual_return.csv")

ls()

Berkshire <- Berkshire |>
  mutate(
    Year = as.integer(Year),
    PB = Price_to_Book,
    Annual_Return = Annual_Stock_Return_pct
  ) |>
  select(Year, PB, Annual_Return) |>
  pivot_longer(
    cols = c(PB , Annual_Return),
    names_to = "metric",
    values_to = "Value"
  )

graph <- ggplot(
  Berkshire,
  aes(x = Year, y = Value)) +
  geom_line(aes(fill = metric)) +
  labs(
    title = "Berkshire Hathaway Finanical History"
  ) +
  facet_wrap(~metric, ncol = 1, scales = "free_y") +
  scale_x_continuous(breaks = seq(min(Berkshire$Year),
                                  max(Berkshire$Year),
                                  by = 3)) +
  theme_classic()

ggsave(
  "visualization.png",
  plot = graph,
  width = 1200,
  height = 900,
  units ="px"
)


print(graph)


