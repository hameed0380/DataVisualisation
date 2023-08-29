World Bank international arrivals islands

The dataset contains 27 island nations with their economic indicator, demographic element, geographical characteristic, and tourism factors from 2000 to 2012.

Part 1 Visualisation 
•	You should
•	think about what story (or stories) you would like to tell
•	pose two significant questions that you would like to answer; 
•	assess the fitness of the data for answering your questions;
•	produce at least 2 static visualisations for addressing your questions


Story: The story of the importance of the tourism industry for the economic growth of island nations.
Does tourism affect the island nation’s economy?
Pre-processing:
- I first decided to replace empty data values with NA (an alternative I found you can use as. 
E.g., numeric and it changes it to NA by coercion)
- Then renamed the flights - WB column to flights (make the attribute name nice) 
- as factor to necessary columns -> convert all character columns 
- check for hidden spaces in strings.
- Also experimented with “data <- data[complete.cases(data), ]” and “data[is.na(data)] <- 0
- Later learned and experimented with “dplyr” (filtering out)
