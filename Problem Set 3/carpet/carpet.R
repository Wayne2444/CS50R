# TODO: Calculate yearly growth of visitors
calculate_growth_rate <- function(years, visitors) {
  (visitors[length(visitors)] - visitors[1]) /
    (years[length(years)] - years[1])
}

# TODO: Predict visitors in given year
predict_visitors <- function(years, visitors, year) {
  rate_change <- calculate_growth_rate(years, visitors)
  lastyear <- years[length(years)]
  lastvisitor <- visitors[length(visitors)]
  ppl <- lastvisitor + (year - lastyear) * rate_change
  return(ppl)
}

visitors <- read.csv("visitors.csv")
year <- as.integer(readline("Year: "))
predicted_visitors <- predict_visitors(visitors$year, visitors$visitors, year)
cat(paste0(predicted_visitors, " million visitors\n"))
