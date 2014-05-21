data <- read.csv("population.csv",header=T,encoding="UTF-8",stringsAsFactors=FALSE)
dim(data)
class(data)
makeList <- function(x) {
  lapply(seq(nrow(x[1])),function(y){list(name=x[,1][y],value=x[,2][y])})
}
out <- makeList(data)
head(out)
jsonOut <- toJSON(out)
write(jsonOut,file="population.json")
