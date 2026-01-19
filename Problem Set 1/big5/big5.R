Tests <- read.table("tests.tsv", sep= "\t", header = TRUE)

unique(Tests$gender)

Tests$gender <-factor(
  Tests$gender,
  labels = c("Unanswered","Male","Female", "Other")
)

Tests$extroversion <- round((Tests$E1 + Tests$E2 + Tests$E3) /15, 2)
Tests$neuroticism <- round((Tests$N1 + Tests$N2 + Tests$N3) /15, 2)
Tests$agreeableness <- round((Tests$A1 + Tests$A2 + Tests$A3) /15, 2)
Tests$conscientiousness <- round((Tests$C1 + Tests$C2 + Tests$C3) /15, 2)
Tests$openness <- round((Tests$O1 + Tests$O2 + Tests$O3) /15, 2)

write.csv(Tests, "analysis.csv", row.names = FALSE)
