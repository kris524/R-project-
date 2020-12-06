roll<-function(bones= 1:6){
  
  dice<-sample(bones,size=2,replace=TRUE, 
               prob<-c(1/8, 1/8, 1/8, 1/8, 1/8, 3/8))
  sum(dice)
  

}
library('ggplot2')
rolls<-replicate(10000,roll())
qplot(rolls,binwidth=1)
