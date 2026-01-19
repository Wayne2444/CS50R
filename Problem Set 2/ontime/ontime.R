Bus <- read.csv("bus.csv")
Rail<- read.csv("rail.csv")

combine <- rbind(Bus, Rail)

Route <- readline("Please enter the route: ")

all_rows <- combine[combine$route == Route, ]

on_peak <- all_rows[all_rows$peak == "PEAK", ]
peak_avg<- mean(on_peak$numerator / on_peak$denominator, na.rm = TRUE)
peak_percent<- round(peak_avg * 100)
print (paste0("On time ", peak_percent,"% of the time during off-peak hours."))

off_peak <- all_rows[all_rows$peak == "OFF_PEAK", ]
off_peak_avg<- mean(off_peak$numerator / off_peak$denominator, na.rm = TRUE)
peak_percent<- round(off_peak_avg * 100)
print (paste0("On time ", peak_percent,"% of the time during peak hours."))
