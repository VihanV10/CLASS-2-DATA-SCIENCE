

NBA<-NBA[,c(2,3,4,5)]
head(NBA)
fit3= lm(NBA)
res=residuals(fit3)
summary(fit3)
fit4=lm(NBA$`Field Goal % Difference`~NBA$Wins)
summary(fit4)
#answer for question 1 is 41.6+4.84(FG%)-4.86(FG%ALLOWED)
#answer for question 2 is FG% HAS POSITIVE CORRELATION, FG% ALLOWED HAS NEGATIVE ALLOWED 
#answer for question 3 is 45.56
#       1           2           3           4           5           6           7           8 
2.1635153 -10.0843981  -4.9404414   5.5904605  -1.9957027   4.0127836   0.9006195   1.7616572 
9          10          11          12          13          14          15          16 
-1.9520247   8.9223074  -0.4983277  -9.8449245   3.5067594  -1.6505149  -5.6639954   2.3391016 
17          18          19          20          21          22          23          24 
-10.7846458  -4.7578707   4.1584514   8.4131399  11.2238173  -1.0108480  -4.7243206   0.1200931 
25          26          27          28          29          30 
16.3393341  -2.7996050  10.9273946 -10.6018194  -4.7744947  -4.2955013 
#answer for question 5 is yes as the gradient does have a siginifcant value 
#answer for question 6 is p value is less than 0.05 hence we reject null hypothesis showing a correlation exists
#(coffeceinet of multiple determination)
#answer for question 8 is 0.7236
#answer for question 9 is 
#answer for question 10 is 
