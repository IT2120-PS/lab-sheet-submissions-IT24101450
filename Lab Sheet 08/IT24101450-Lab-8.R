setwd('C:\\Users\\IT24101450\\Desktop\\IT24101450')

data<-read.table("Exercise - LaptopsWeights.txt",header=TRUE)
fix(data)
attach(data)

#change variable name
colnames(data) <- "Weight"



#Q1
popmn<-mean(Weight)
popvar<-var(Weight)

# Q2
#Draw 25 Random Samples of Size 6 
sample_means <- c()
sample_sds <- c()

#assign samples
for(i in 1:25) {
  sample_data <- sample(Weight, 6, replace = TRUE)  # Sample of size 6
  sample_means[i] <- mean(sample_data)
  sample_sds[i] <- sd(sample_data)
}

# Q3
#Calculate Mean and Standard Deviation of the 25 Sample Means
mean_sample_means <- mean(sample_means)
sd_sample_means <- sd(sample_means)

# Compare with True Mean and True SD
pop_sd <- sd(data$Weight) * sqrt((length(data$Weight) - 1) / length(data$Weight))  # Population SD

expected_se <- pop_sd / sqrt(6)  # Standard error of the mean

# Results
popmn
pop_sd
mean_sample_means
sd_sample_means
expected_se

