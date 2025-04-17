library(dplyr)
library(nycflights13)
install.packages("nycflights13")
library(nycflights13)
flights
?flights
View(flights)
filter(flights,carrier=="UA", month==2)
filter(flights, carrier == "UA", arr_delay>60)
filter(flights, carrier == "AA", month == 12, day == 1)
filter(flights,carrier=="UA", month==2, day == 6)
filter(flights, carrier == "AA" | carrier == "UA")
filter(flights, carrier == "UA" & dep_delay>0)
filter(flights, carrier=="UA" | carrier == "AA", month == 2, day != 6)
filter(flights, carrier == "AA", dep_delay > 60, month == 1, month == 2, month == 3, month == 4, month == 5, month == 6)
filter(flights, dep_delay == 0, arr_delay > 0)
filter(flights, dep_delay>0 | arr_delay>0)
x <- NA
is.na(x)
is.na("maggie")
filter(flights, arr_delay >= 120) 
filter(flights, dest = IAH | dest = HOU)
filter(flights, carrier == "UA" | carrier == "AA" | carrier == "DL")
filter(flights, month == 7 | month == 8 | month == 9) 
filter(flights, arr_delay > 120, dep_delay == 0)
filter(flights, dep_delay >= 60, arr_delay >= 30 )
filter(flights, dep_time >= 0000, dep_time <= 600)

arrange(flights, year)
arrange(flights, dep_delay)
arrange(flights, desc(dep_delay))

df <- tibble(col1=c(1,2,3), col2=c("h", "l", "o"))
df
df <- tibble(col1=c(1,2,3), col2=c("h", "l", "o"), col3=rnorm(3))
df

df3<- tibble(name=c("ben", "amy", "jim", "rat", "dog", "cat"), age=c(20, NA,35,0.5, NA, 10), net_worth=rnorm(6))
df3

arrange(df3, age)
arrange(df3, is.na(age))
arrange(df3, !is.na(age))
arrange(df3,desc(is.na(age)))


arrange(flights,desc(dep_delay))
arrange(flights, (dep_time))
arrange(flights, air_time)
arrange(flights, desc(distance))

arrange(flights, !is.na(dep_time))

select(flights, year, month, day)
select(flights, dep_time, arr_time)
select(flights, sched_arr_time:tailnum)
select(flights,-(sched_arr_time:tailnum))


mutate(df3, profit=net_worth+1)

a <- mutate(flights, speed = distance / air_time)
select(a, speed, distance, air_time)
mutate(flights, speed=distance/air_time) %>% select(distance, air_time, speed)

filter(df3, age>=0) %>% mutate(profit=net_worth+1) %>% arrange(name)

