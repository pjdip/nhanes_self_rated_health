r
# Run this line once, then you can delete it or comment it out
# install.packages(c("nhanesA", "dplyr", "ggplot2"))

library(nhanesA)
library(dplyr)
library(ggplot2)

# Load health status and demographics for two cycles
# translated = FALSE keeps the raw number codes (1-5, 7, 9) for codebook work
hsq_2005  <- nhanes("HSQ_D",  translated = FALSE)
demo_2005 <- nhanes("DEMO_D", translated = FALSE)
hsq_2015  <- nhanes("HSQ_I",  translated = FALSE)
demo_2015 <- nhanes("DEMO_I", translated = FALSE)

# Quick look: how many people gave each answer?
table(hsq_2005$HSD010, useNA = "ifany")
table(hsq_2015$HSD010, useNA = "ifany")
cou