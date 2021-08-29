german_credit<- read.csv(file="/Users/zeynepcevik/Desktop/Ryerson/CIND119_spring/FinalProject/project_datasets/german_credit_card/german_credit_updated.csv", stringsAsFactors = FALSE, sep = ",", header=TRUE)

summary(german_credit)

library(corrplot)
G<-cor(german_credit, method="spearman")
corrplot(G,method="circle")

german_credit_copy <- german_credit
names(german_credit_copy) <- c("Cred", "AcBa", "DuCr", "PSPrevCr", "Purpo", "CrAm"," VS", "LenCE","IofPer", "SexMS", "Gur", "DinCA", "MVAA","Age","ConCr", "TypeA","NoCrBank","Occ","NoDep","Tel","ForW")
summary(german_credit_copy)

library(corrplot)
G_copy<-cor(german_credit_copy, method="spearman")
corrplot(G_copy,method="circle",tl.col="black")
corrplot(G_copy, method="ellipse", tl.col="black")
corrplot(G_copy, method="pie", tl.col="black")
ggplot(german_credit_copy, aes(Cred, fill='red'))+geom_bar()

par(mfrow=c(2,2))
ggplot(german_credit_copy, aes(Cred, fill='red'))+geom_bar()
ggplot(german_credit_copy, aes(AcBa, fill='blue'))+geom_bar()
ggplot(german_credit_copy, aes(DuCr, fill='yellow'))+geom_bar()
ggplot(german_credit_copy, aes(PSPrevCr))+geom_bar()

par(mfrow=c(2,4))
hist(german_credit_copy$Cred, col="black", main="Credibility")
hist(german_credit_copy$AcBa, col="darkgrey", main="Account Balance")
hist(german_credit_copy$DuCr, col="grey",main="Duration of Credit")
hist(german_credit_copy$PSPrevCr, col="darkblue", main="Payment Status of Previous Payment")
hist(german_credit_copy$Purpo, col="darkgreen", main="Purpose")
#hist(german_credit_copy$CrAm, col="darkyellow",main="Credit Amount")
hist(german_credit_copy$LenCE, col="orange", main="Length of Current Employment")
hist(german_credit_copy$IofPer, col="darkorange", main="Instalment Percent")
hist(german_credit_copy$SexMS, col="yellow", main="Sex & Married Status")


par(mfrow=c(2,4))
hist(german_credit_copy$Cred, col="black", main="Credibility")
hist(german_credit_copy$AcBa, col="darkgrey", main="Account Balance")
hist(german_credit_copy$DuCr, col="grey",main="Duration of Credit")
hist(german_credit_copy$PSPrevCr, col="darkblue", main="Payment Status of Previous Payment")
hist(german_credit_copy$Purpo, col="darkgreen", main="Purpose")
#hist(german_credit_copy$CrAm, col="darkyellow",main="Credit Amount")
hist(german_credit_copy$LenCE, col="orange", main="Length of Current Employment")
hist(german_credit_copy$IofPer, col="darkorange", main="Instalment Percent")
hist(german_credit_copy$SexMS, col="yellow", main="Sex & Married Status")




par(mfrow=c(2,5))

hist(german_credit_copy$Gur, col="green",main="Guarantors")
hist(german_credit_copy$DinCA, col="darkred", main="Duration in Current Address")
hist(german_credit_copy$MVAA, col="red", main="Most Valuable Asset")
hist(german_credit_copy$ConCr, col="yellow",main="Concurrent Credits")
hist(german_credit_copy$TypeA, col="purple", main="Type of Apartment")
hist(german_credit_copy$NoCrBank, col="pink", main="No of Credits at this Bank")
hist(german_credit_copy$Occ, col="grey", main="Occupation")
hist(german_credit_copy$NoDep, col="brown", main="No of Dependents")
hist(german_credit_copy$Tel, col="black", main="Telephone")
hist(german_credit_copy$ForW, col="yellow", main="Foreign Worker")
