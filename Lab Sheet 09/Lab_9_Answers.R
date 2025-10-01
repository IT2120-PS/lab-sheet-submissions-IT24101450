setwd('C:\\Users\\ASUS\\OneDrive\\Desktop\\PS_LAB9')

##  Q1
set.seed(42)               
n <- 25
sample <- rnorm(n, mean=45, sd=2)

# View sample
print(sample)

##Q2
# One-sample t-test: H0: mu = 46 vs H1: mu < 46 (left-tailed)
t.res <- t.test(sample, mu = 46, alternative = "less")
t.res


t.res$statistic    # t statistic
t.res$p.value      # p-value
t.res$conf.int     # 95% CI for mean (two-sided)
