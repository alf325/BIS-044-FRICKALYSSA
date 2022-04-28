library("readxl")
library("tidyverse")
library("writexl")
library("dplyr")
D1 <- data.frame(read_excel("~/Assignment 4/dataset1.xls"))
x = 1
for (i in D1){
  y = 1
  for (j in i){
    if (toString(j) == "Aldermen"){
      D1[c(y), c(x)] = "Alderman"
    }
    if (toString(j) == "Clerk"){
      D1[c(y), c(x)] = "Clerk of Court"
    }
    if (toString(j) == "Constable(s)"){
      D1[c(y), c(x)] = "Constable"
    }
    if (grepl("Councilman", toString(j)) | grepl("Council Member", toString(j))){
      D1[c(y), c(x)] = "Council Member"
    }
    if (grepl("Judge", toString(j))){
      D1[c(y), c(x)] = "Judge"
    }
    if (grepl("Justice of the Peace", toString(j))){
      D1[c(y), c(x)] = "Justice of the Peace"
    }
    if (toString(j) == "Mayor-President"){
      D1[c(y), c(x)] = "Mayor"
    }
    y = y+1
  }
  x = x+1
}
write_xlsx(D1,"Assignment 4/dataset1.xls")
Num <- D1 %>% count(Title)
View(Num)
#-10 missing some replace commands
#90/100