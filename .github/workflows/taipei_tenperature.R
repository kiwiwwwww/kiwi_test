temperature_url <- "https://e-service.cwb.gov.tw/HistoryDataQuery/MonthDataController.do?command=viewMain&station=466920&stname=%25E8%2587%25BA%25E5%258C%2597&datepicker=2023-08&altitude=5.3m"

temperature <- temperature_url %>%
  read_html() %>%
  html_table() %>% as.data.frame() %>% 
  select(11:45)

all_temperature <- bind_rows(all_temperature,temperature)
