#' ---
#' title: "My RMarkdown test"
#' author: "GS"
#' date: "2023-12-24"
#' output: github_document
#' ---

#'Here is the distribution of exit velocities on Sept. 1, 2023.

#+ r Packages, include=FALSE
## Almost finished with chapter 18!

library(baseballr)
library(dplyr)
library(ggplot2)
library(tidyr)


#+ r Exit velocities, echo=FALSE
sc_data <- statcast_search(start_date = '2023-09-01', end_date = '2023-09-01',
  	playerid = NULL, player_type = "batter")

(ggplot(sc_data %>% filter(!is.na(launch_speed)), aes(launch_speed)) +
	geom_histogram(binwidth=5, fill="firebrick", colour="red"))



#'Here's a breakdown of pitches thrown by type on that day.

#+ r Pitch types, echo=FALSE
(ggplot(sc_data, aes(pitch_type)) +
	geom_bar(fill="dodgerblue", colour="midnightblue"))