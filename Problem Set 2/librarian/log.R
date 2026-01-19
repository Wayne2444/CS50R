authors <- read.csv("authors.csv")
books <- read.csv("books.csv")

#Book 1
books[books$author == "Mia Morgan", ]

#Book 2
books[books$year == 1613 &
      books$topic== "Music", ]

#Book 3
books[(books$author == "Lysandra Silverleaf" |
        books$author == "Elena Petrova") &
        books$year == 1775,]

#Book 4
books[books$pages > 200 &
      books$pages < 300 &
      (books$year == 1990 |
      books$year == 1992), ]

#Book 5
books[grepl("Quantum Mechanics", books$title), ]

#Book 6
real_authors <- authors$author[authors$hometown == "Zenthia"]

books[books$topic == "Education" &
      books$year %in% 1700:1799 &
      books$author %in% real_authors, ]


