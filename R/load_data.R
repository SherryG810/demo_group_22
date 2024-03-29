library(readr)
library(RSQLite)

mock_data <- readr::read_csv("data_upload/MOCK_DATA.csv")

my_connection <- RSQLite::dbConnect(RSQLite::SQLite(),"database/database.db")

RSQLite::dbWriteTable(my_connection,"customers",mock_data,overwrite=TRUE)

