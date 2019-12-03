library(tidyverse)


# day 1 - part 1 ----------------------------------------------------------

input1 <- readr::read_csv("input1.txt",col_names = FALSE)

day1_pt1 <- input1 %>%
  {. / 3} %>% 
  trunc %>% 
  {. -2} %>% 
  sum

# alternative with a function (also to be used in part 2)

fuel_needed <- function(mass){
  mass %/% 3 - 2
}

day1_pt1 <- input1 %>% 
  fuel_needed %>% 
  sum



# day 1 - part 2 ----------------------------------------------------------


cumulative_fuel <- function(mass){
  total_fuel <- 0
  while (mass > 0){
    mass <- fuel_needed(mass)
    ifelse(mass > 0, total_fuel <- total_fuel + mass, break)
    }
  return(total_fuel)
}    
      
day1_pt2 <- map_dbl(input1$X1, cumulative_fuel) %>% 
  sum
