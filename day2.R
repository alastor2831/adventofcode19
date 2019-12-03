library(tidyverse)


# day 2 - part 1 ----------------------------------------------------------

input2 <- readr::read_file("input2.txt") %>% 
  str_split(",") %>%
  unlist %>% 
  as.integer

input2[2] <- 12
input2[3] <- 2

for (index in seq(to = length(input2), by = 4)) {
  operation <- input2[index]
  a_position <- input2[index + 1]
  b_position <- input2[index + 2]
  out_position <- input2[index + 3]
  
  a_input <- input2[a_position + 1]
  b_input <- input2[b_position + 1]
  
  print("operation:")
  print(operation)
  print(a_input)
  print(b_input)
  print(out_position)
  print(input2)

  
  if (operation == 1) {
    input2[out_position + 1] <- a_input + b_input
  } else if (operation == 2) {
    input2[out_position + 1] <- a_input * b_input
  } else {
    break
  }
  
}

input2[1]



index <- 1    
opcde <- input2[index]
while (opcde != 99) {
  operation <- input2[index]
  number_A <- input2[index + 1]
  number_B <- input2[index + 2]
  position <- input2[index + 3]
  
  
  if (opcode == 1) {
    input2[position + 1] <- number_A + number_B
  } else if (operation == 2) {
    input2[position + 1] <- number_A * number_B
  } else {
    break
  }
}
  

# day 2 - part 2 ----------------------------------------------------------

