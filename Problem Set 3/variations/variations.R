random_character <- function() {
  # TODO: Return one random letter
  sample(letters, 1)
}


print_sequence <- function(length) {
  # TODO: Print a random sequence of specified length
  num <- 0
  while (num < length) {
  cat(random_character(), sep = "")
  Sys.sleep(0.25)
  num=num+1
  }
}
print_sequence(20)