# *.csv and *.RData files from being synced by Git. 
file.edit(".gitignore")

ptm <- proc.time()
library("data.table")
header <- read.table("IC4WSA.csv", header = TRUE, sep = ",", nrows = 1)
data.frame("IC4WSA.csv") <- fread("IC4WSA", skip = 1, sep = ",", header = FALSE, data.table = FALSE)
DF <- data.frame("IC4WSA.csv")
setnames(DF, colnames(header))
rm(header)
DF
FREAD_READ_TIME <- (proc.time() - ptm)
FREAD_READ_TIME

