library(ggplot2)

# summing emission data per year per type
data <- aggregate(Emissions ~ year + type, balt, sum)

# plotting and saving the file

png(filename="myplot3.png", width=480, height=480)
g <- ggplot(data, aes(year, Emissions, color = type))
g + geom_line() +
        xlab("Year") +
        ylab(expression("Total PM"[2.5]*" Emissions")) +
        ggtitle("Total Emissions per type in Baltimore")
dev.off()
