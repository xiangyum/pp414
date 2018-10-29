df <- mutate(df, less_hs = if_else(EDUCD < 30, 1, 0)) %>%
  mutate(some_hs = if_else(EDUCD >= 30 & EDUCD < 60, 1, 0)) %>%
  mutate(ged = if_else(EDUCD == 64, 1, 0)) %>%
  mutate(hs_grad = if_else(EDUCD == 63, 1, 0)) %>%
  mutate(some_col = if_else((EDUCD > 64 & EDUCD < 81), 1, 
    if_else(EDUCD == 90, 1, 
        if_else(EDUCD == 100, 1, 
            if_else(EDUCD >= 110 & EDUC < 114, 1, 0))))) %>%
  mutate(assoc_deg = if_else(EDUCD > 80 & EDUC <90, 1, 0)) %>%
  mutate(bach = if_else(EDUCD == 101, 1, 0)) %>%
  mutate(masters = if_else(EDUCD == 114, 1, 0)) %>%
  mutate(profd = if_else(EDUCD == 115, 1, 0)) %>%
  mutate(phd = if_else(EDUCD == 116, 1, 0))