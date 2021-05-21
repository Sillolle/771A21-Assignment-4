library(dplyr)
library(ggplot2)
df <- read.csv("final-test.csv")

df$count.agents2 <- df$count.agents2 %>% na_if(0)
df <- df %>% filter(count.agents2 > 9)
df <- df %>% mutate(aggressive_share = Aggressive_turtles/count.agents2)
df <- df %>% mutate(passive_share = Non.aggressive_turtles/count.agents2)
df <- df %>% mutate(amount_of_food_10 = amount_of_food/10,
                    value_of_food_10 = value_of_food/10)
sum(df$aggressive_share > 0.5)
sum(df$passive_share > 0.5)
sum(df$aggressive_share > 0)
sum(df$passive_share > 0)
model1 <- lm(aggressive_share ~ value_of_food_10 + percentage_of_aggressive + view_Distance + constant_energy_loss + amount_of_food_10, data = df)
summary(model1)

plot <- ggplot(df) +
  geom_smooth(aes(aggressive_share, constant_energy_loss)) +
  ggtitle("Share of Aggresive turtles as a function of constant energy loss") +
  labs(x = "Share of Aggresive turtles", y = "Constant energy loss" )


plot

plot2 <- ggplot(df) +
  geom_smooth(aes(aggressive_share, amount_of_food)) +
  ggtitle("Share of Aggresive turtles as a function of constant energy loss") +
  labs(x = "Share of Aggresive turtles", y = "Amount of food" )


plot2


mean(df$aggressive_share)


