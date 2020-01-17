library(tidyverse)
library(ggdark)
library(plyr)

df <- read_csv('~/code/vsb-vis/length/data.csv')

df$juris <-tools::toTitleCase(df$juris)
df$juris <- revalue(df$juris, c("Nordrhein-Westfalen"="NRW"))

ylab <- c(2.5, 5.0, 7.5, 10)


df %>% filter(year > 1992) %>% filter(juris %in% c('Bund', 'Sachsen', 'NRW')) %>% 
  ggplot(data = ., aes(x=year, y=count)) + geom_line(aes(colour=juris), size=1) +
  dark_theme_gray() + scale_color_brewer(palette="Set2") + 
  labs(x = "Jahr", y = 'Zeichen', colour = '') + 
  scale_x_continuous(breaks=seq(1993, 2018, 3)) +
  scale_y_continuous(labels = paste0(ylab * 100, "K"), breaks = 10^5 * ylab)


ggsave("laenge.pdf", width=6, height=3)


df %>% filter(year > 1992) %>%
  ggplot(data = ., aes(x=year, y=count, colours=juris)) + geom_line(color='grey') +
  dark_theme_gray() + scale_x_continuous()

df %>% filter(c('bund')

df2 <- df %>%
  filter(year > 1992) %>%
  group_by(year) %>%
  summarise_at(vars(count), funs(mean(., na.rm=TRUE)))

ggplot(data = df2, aes(x=year, y=count)) + geom_line(color='orange') + theme_dark() + scale_x_discrete(limits=c(1993, 2000, 2005, 2010, 2018))
