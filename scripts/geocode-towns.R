# Geocode features for the map
towns <- tibble::tribble(
  ~name,
  "Wollombi",
  "Singleton",
  "Sydney",
  "Newcastle",
  "Jerrys Plains",
  "Windsor",
  "Emu Plains"
) |>
  dplyr::mutate(
    address = paste0(name, ", New South Wales, Australia"),
    nominatimlite::geo_lite(address, lat = "latitude", long = "longitude")
  ) |>
  readr::write_csv(file.path("data", "towns.csv"))

