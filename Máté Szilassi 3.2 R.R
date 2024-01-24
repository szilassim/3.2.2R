## Assignment 3.2 Solutions - 2024 Programming in Psychological Science (PIPS)
#
# Record of Revisions
#
# Date            Programmer              Descriptions of Change
# ====         ================           ======================
# 24-Jan-24      Máté Szilassi                 Original code

# Q3.2.1 -----------------------------------------------------------------------

#To print out my shopping list
remind_me <- function() {
  cat(" 2 Kg of Meat \n 1 Bread \n 5 Onions \n 1 liter of Milk")
}

#To make a function that provides answers to task 1,2,3 first we make a vector
#of the answers to(1,2,3)
assignment_3.1_answers <- c(
r"(
    #With this i create a distribution of grades, rounded up to the nearest half

    grades <- (round(trunc(rnorm(70, mean = 7, sd = 1) / 0.5), 10) * 0.5)

    # With this i print out a historgram using rs basic histogram
    hist(grades)
)",
r"(
    # With this i load the dataframe
    planes <-
      read.csv(
        "https://raw.githubusercontent.com/hannesrosenbusch/schiphol_class/master/schiphol_data.csv"
    )
    # With this i make a scatterplot with date as x and TMAX as y

    plot(planes$DATE, planes$TMAX, xlab = "Year", ylab = "Temperature")
)",
r"(
    # With this i install and load the required packages
    install.packages("titanic")
    install.packages("ggplot2")
    library("titanic")
    library(ggplot2)

    # With this i load the dataset into a df

    titanic_data <- titanic_train

    # With this i plot out the bargraph with Sex on the x axis, and the factor version of survived on fill

    ggplot(data = titanic_data, mapping = aes(x = Sex, fill = (as.factor(Survived)))) +
      geom_bar() +
      labs(fill = "How did it go?") +
    # With this I specify the names of the two conditions used for fill
    scale_fill_discrete(labels = c(
    "0" = "Alive",
    "1" = "Dead"
    )) +
    theme_linedraw()
)"
)

#To cheat on the assignment:
#Input: The number of the task you want to see the answers to (1,2,3)

cheat <- function(assignment) {
  cat(assignment_3.1_answers[assignment])
}
cheat(2)


# Q3.2.2 -----------------------------------------------------------------------

library(ggplot2)

#This function prints out a random art picture using the input as a seed
my_art <- function(seed=1){
  #This makes a dataframe of random numbers and colours
  art_data <- data.frame(
    color = sample(
      c("green","red","purple","blue","black","white"),
      100,T),
    x = runif(100,0,100),
    y = runif(100,0,100)
  )
  #This uses those random numbers and colours to map random dots and lines
  art_visual <- ggplot(art_data, aes(x = x, y = y, color = color)) +
    geom_point(size = runif(100,1,5)) +
    geom_line(linewidth=runif(100,0,1))+
    geom_curve(aes(
      x=runif(100,1,5),
      y = y, 
      xend=runif(100,0,100),
      yend=runif(100,0,100))
      )+
    theme_void()+
    theme(legend.position="none")
  print(art_visual)
}

