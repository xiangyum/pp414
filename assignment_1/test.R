
q2c <- read_csv("generated_data2.csv")

q2c <- mutate(q2c, college_income = 50000 + college) %>%
  mutate(noncollege_income = 40000 + no_college) 

q2c <- mutate(q2c, decision = ifelse(college_income>noncollege_income, 1, 0))



count(q2c, decision)


q2c <- mutate(q2c, observed_income =  ifelse(decision == 1, college_income, noncollege_income))

# naive estimator
q2c_col <- filter(q2c, decision == 1)
q2c_hs <-filter(q2c, decision == 0)

naive_estimate3 <- mean(q2c_col$observed_income) - mean(q2c_hs$observed_income)

q2c <- mutate(q2c, treatment_effect = college_income - noncollege_income)
ate3 <- mean(q2c$treatment_effect)