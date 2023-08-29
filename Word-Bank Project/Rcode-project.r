Task 1
----Viz 1
library(ggplot2)
data <- read.csv("w.csv")

str(data)
colors <- rainbow(length(unique(data$country)))
 
ggplot(data, aes(x = flights, y = gdpnom, color = factor(country))) +
+   geom_point(size = 3) +
+   labs(title = "Relationship between GDP and Flights",
+        x = "Number of flights",
+        y = "GDP (in billions USD)",
+        color = "Country") +
+   scale_color_manual(values = colors) +
+   theme_minimal()

-----Viz 2

library(ggplot2)
library(dplyr)
 
data <- read.csv("world.csv")
 
str(data)
data <- data %>% filter(!is.na(gdpnom) & !is.na(receipt))
 
ggplot(data, aes(x = gdpnom, y = receipt)) +
+   geom_point(aes(size = pop), alpha = 0.6, color = "#69b3a2") +
+   scale_x_continuous(trans = "log10", breaks = c(1000, 10000, 100000, 1000000),
+                      labels = c("1K", "10K", "100K", "1M"),
+                      name = "GDP (USD) (log scale)") +
+   scale_y_continuous(trans = "log10", breaks = c(1000000, 10000000, 100000000, 1000000000),
+                      labels = c("1M", "10M", "100M", "1B"),
+                      name = "Tourism receipts (USD) (log scale)") +
+   labs(title = "Relationship between GDP and tourism revenue",
+        subtitle = "Size of points indicates population",
+        x = "GDP (in USD) per capita (log scale)") +
+   theme_minimal()
