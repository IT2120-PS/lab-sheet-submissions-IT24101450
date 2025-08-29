# Set working directory
setwd("C:/Users/HP/Desktop/IT24101450")  # Use forward slashes or double backslashes

# Read and rename the dataset
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE, sep = ",")

# View the data in a separate window
fix(Delivery_Times)

# Attach the dataset (optional, not recommended for large scripts)
attach(Delivery_Times)

# Plot the histogram
freq <- hist(Delivery_Times$Delivery_Time_.minutes.,
             main = "Delivery Time with Intervals",
             breaks = seq(20, 70, length.out = 9),  # Use length.out instead of length
             right = FALSE,
             xlab = "Delivery Time (minutes)",
             ylab = "Frequency")

# Cumulative frequency
cum.freq <- cumsum(freq$counts)  # Use freq$counts, not freq directly

# Create cumulative frequency values for ogive
new <- c()
breaks <- freq$breaks  # Extract breaks from histogram

for (i in 1:length(breaks)) {
  if (i == 1) {
    new[i] <- 0
  } else {
    new[i] <- cum.freq[i - 1]
  }
}

# Plot cumulative frequency polygon (ogive)
plot(breaks, new,
     type = 'l',  # Use lowercase 'L' for line plot
     main = "Cumulative Frequency Polygon for Delivery Time",
     xlab = "Delivery Time",
     ylab = "Cumulative Frequency",
     ylim = c(0, max(cum.freq)))

# Create table of upper class limits and cumulative frequencies
ogive_table <- cbind(Upper_Breaks = breaks, Cumulative_Frequency = new)
print(ogive_table)

