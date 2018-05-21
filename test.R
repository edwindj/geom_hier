library(ggplot2)
set.seed(42)

# create_data <- function(year = 2000:2010, hier = 2){
#   df <- expand.grid(LETTERS[1:2], LETTERS[1:2]
#                    , year = year)
#   df$value <- runif(nrow(df), max=100)
#   tapply(df$value, list(df$Var1, df$Var2), mean)
# }

dat <- data.frame( g = c("2000", "2001", "2000", "2001", "2000", "2001")
                 , l = c("A1", "A1", "A2", "A2", "A3", "A3")
                 , value = sample(6)
                 )

ggplot(dat, aes(x = g, y = value, fill=l)) + 
  geom_col(position = position_hier(width=0.5), alpha=0.90)

ggplot(dat, aes(x = g, y = value, fill=l)) + 
  geom_col(position = "hier", alpha=0.90)

geom_col
