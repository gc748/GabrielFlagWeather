Flagstaff_Weather <- read_csv("data-raw/Pulliam_Airport_Weather_Station.csv")
Flagstaff_Weather <- Flagstaff_Weather %>%
  select(c(DATE, PRCP, SNOW, TMAX, TMIN)) %>%
  drop_na() %>%
  mutate(DATE = mdy(DATE))
usethis::use_data(Flagstaff_Weather, overwrite = TRUE)
