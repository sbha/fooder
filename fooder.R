pancaker <- function(eaters = 1){
  df_recipe <- jsonlite::fromJSON(
    '[{"ingredient":"flour", "volume":0.75, "unit":"cups"}, 
  {"ingredient":"buttermilk", "volume":0.75, "unit":"cups"},
  {"ingredient":"kosher salt", "volume":0.75, "unit":"tsp"},
  {"ingredient":"large egg", "volume":1, "unit":"egg"},
  {"ingredient":"whole milk", "volume":0.25, "unit":"cups"},
  {"ingredient":"brown sugar", "volume":2, "unit":"tbsp"},
  {"ingredient":"baking power", "volume":0.75, "unit":"tsp"},
  {"ingredient":"baking soda", "volume":0.25, "unit":"tsp"},
  {"ingredient":"vanilla", "volume":0.5, "unit":"tsp"}
  ]'
  ) %>% as_tibble()
  
  df_recipe %>% 
    mutate(volume = volume * eaters) 
}

pancaker(7)


tortillar <- function(eaters = 1){
  df_recipe <- jsonlite::fromJSON(
    '[{"ingredient":"flour", "volume":3, "unit":"cups"}, 
  {"ingredient":"kosher salt", "volume":1, "unit":"tsp"},
  {"ingredient":"baking power", "volume":2, "unit":"tsp"},
  {"ingredient":"shortening or lard", "volume":0.33, "unit":"cup"},
  {"ingredient":"water", "volume":1.1, "unit":"cups"}
  ]'
  ) %>% as_tibble()
  
  df_recipe %>% 
    mutate(volume = volume * eaters) 
}

tortillar(4)