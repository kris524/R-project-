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

myquarter<-function(x){
  
  if (x>=0 & x<=90){print(1)}
  if (x>=90 & x<=180){print(2)}
  if (x>=180 & x<=270){print(3)}
  if (x>=270 & x<=360){print(4)}
    
}
myquarter(170)

#question 4
mym <-1:4
matrixfun<-function(mym){
  mym[mym%%2==1]<-2*mym[mym%%2==1]
}

#question 5

myfun<-function(a,b){
  a^b
}
i<- 2
myfun2<-function(a,b){
  
  (a^b)/(2:length(a)+1)
}

#question 6

a = c(3,5,6)
b = c(T,T,F)
c = c("Tom", "Ted", "Hank")

data.frame(a,b,c)

#question 7

invoice<- function(n_units,price){
  net_price<-n_units*price
  if (n_units>=25){
    net_price<-net_price - net_price*0.10
    }
  
  return(net_price)
}


#question 8

doreturn<- function(x,y){
  
  a = 5*x + y
  b = x + 7*y
  r = 3*x + 9*y
  t = x/y - 115
  return (c(a,b,r,t))
 
}
plot(rivers)


