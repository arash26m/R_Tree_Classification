library(rpart)
address = "C:/Users/ataghi2/OneDrive/CH4DATA.csv"
df=read.csv(address ,header=T)
fit = rpart(PS_2C ~ RQL1J+RQL2J+RQL3J+RQL4J+RQL5J+RQL6J+RQL7J, data=df, method = "anova")
plot(fit)
text(fit, use.n = TRUE)
printcp(fit) # display the results
plotcp(fit) # visualize cross-validation results
summary(fit) # detailed summary of splits
