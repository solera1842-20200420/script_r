# BS model
# input data
S=100
K=100
r=5/100
q=0.0
sigma=0.3
T=1

Call_MC<-function(sample)
{
  Call<-0
  for(i in 1:sample)
  {
    Call<-Call+max(S*exp((r-q-sigma^2/2)*T+sigma*sqrt(T)*rnorm(1))-K,0)
  }
  Call<-exp(-r*T)*Call/sample
  return(Call)
}

# N=100,000
Call_MC(100000)

Call_MC2<-function(sample)
{
  x<-rnorm(sample)
  y<-S*exp((r-q-sigma^2/2)*T+sigma*sqrt(T)*x)-K
  Call<-exp(-r*T)*sum(y[y>0])/sample #y(Call価値)の正の部分のみを足す
  return(Call)
}

Call_MC2(100000)

# Time
system.time(Call_MC(100000))
system.time(Call_MC2(100000))
