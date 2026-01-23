library(tidyverse)
wordcount <- read_file("beatles.txt")

wordcount <- wordcount |>
  str_to_title() |>
  str_replace_all('[,()"]', "") |>
  str_split("\\s+") |>
  unlist() |>
  tibble(word = _) |>
  filter(word != "") |>
  count(word, name = "count") |>
  filter(count != 1)

graph <- ggplot(
  wordcount,
  aes(x = reorder(word, -count), y = count)
  ) +
  geom_col(aes(fill = word),
  show.legend = FALSE
  ) +
  labs(
    x = "Words",
    y = "Count",
    title = "Word-Count Visualization"
  ) +
  theme_classic()

ggsave(
  "lyrics.png",
  plot = graph,
  width = 1200,
  height = 900,
  units ="px"
)

print(graph)

