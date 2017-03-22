#########################################
### grid plot with single axis labels ###
#########################################

# make some data to plot
a <- c(1,2,3,4)
b <- c(1,2,3,4)

# you need to set plot area margins for the titles

par(oma=c(2,2,2,0))  

# the numbers in brackts set the margin sizes 
# in the order c(bottom, left, top, right)
# in this instance I have set space for x and y labels and main title
# for 80 plots you would need to optimise your margin size!

par(mfrow=c(2,2))  # set space for grid of 16 plots

# while loop to make the plots (makes 4 identical satter plots)
# note that ann is set to F to remove normal axis labels

x <- 0 
while  (x < 4) {plot(a,b, ann=F); x <- x+1;} 

# use mtext to add the labels, the side option sets location, 
#1 = bottom
#2 = lest
#3 = top
#4 = right

mtext("Y label", side=2, outer = T)
mtext("x label", side=1, outer = T)
mtext("Main Title", side=3, outer = T)

###########################################################################

##You will need to play with margin sizes to get it nice for 80 plots
# I cannont get 80 plots on one page!
 
# for exsample 

par(oma=c(2,2,0,0))
par(mfrow=c(40,40))
x <- 0 
while  (x < 80) {plot(a,b, ann=F); x <- x+1;} 
mtext("Y label", side=2, outer = T)
mtext("x label", side=1, outer = T)

#######################18/2/2016## Rob ferguson ###########################

