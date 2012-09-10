library(TraMineR)
library(foreign)
data(biofam)
?biofam
head(biofam)
labels.occ <- c("Parent", "Left" , "Married" , "Left+Marr" , "Child" , "Left+Child" , "Left+Marr+Child" , "Divorced" )
short.labels.occ <- c("Pr", "Lt" , "Marr" , "Lt+Marr" , "Chld" , "Lt+Chld" , "Lt+Marr+Chld" , "Div" )
xtlab20 <- seq(15,30)

biofam.seq <- seqdef(biofam[, 10:25], states=short.labels.occ, labels=labels.occ, cnames=xtlab20)
biofam.seq[1:2, ]
print(biofam.seq[1:2, ], ext=T)
print(biofam.seq[1:2, ], format = "SPS")
seqiplot(biofam.seq, cex.legend=.5)  #first ten sequences
seqfplot(biofam.seq, cex.legend=.5)  #10 most frequent
seqIplot(biofam.seq, sortv = "from.start", cex.legend=.5) #all sequences
seqdplot(biofam.seq, border = NA, cex.legend=.5) #sequence of transversal distributions (chronogram)
