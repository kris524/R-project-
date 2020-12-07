#These exercises are done from this website:
#http://r-tutorials.com/r-exercises-beginners-easy-functions/


#question 1 
myfun<-function(l){
  l^(1:length(l))/l # here i expand with division
  #if you remove 1: you will use only length of l
  #which is 10, so you will have each element of l
  #to the power of 10, -> 1, 1024, 59049...
}

myfun(1:10)


#question 2

data("lynx")
sma <- function(x){
  n=length(x)
  #notice how the average is taken
  #first we take the numbers from 1:112
  #then we take the numbers from 2:113
  #then we take the numbers from 3:114
  #this is apparently how moving average works
  (x[1:(n-2)]+x[2:(n-1)]+x[3:(n)])/3
  
}

mod_data<-sma(lynx)
plot_1 = ts(mod_data, 1821)
plot(lynx)
lines(plot_1,col='blue')

#question 3

myquarter<-function(){
  
  
  
}
