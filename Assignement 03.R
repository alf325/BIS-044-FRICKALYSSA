doc <- read.csv("Yellow_Sample3.csv")
x = 0
y = 0
z = 0
w = 0
for (i in 1:nrow(doc)) {
  x = x+1
  if(doc[c(x),c(6)] == 0 | doc[c(x),c(6)]>10){
  } else{
    y = y + doc[c(x),c(6)]
    w = w + doc[c(x),c(18)]
    z = z+1
  }
}
doc2 <- subset(doc, doc[c(x),c(6)] != 0 & doc[c(x),c(6)] <= 10)
doc <- doc2
print("average trip distance:")
print(y/z)
print("average total amount:")
print(w/z)