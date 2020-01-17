library(tidyverse)
library(ggdark)

df <- read_csv('~/code/vsb-vis/trends/rafnsu.csv')

ggplot(data = df, aes(x=year, y=count)) + geom_line(aes(colour=token), size=1) +
  dark_theme_gray() + scale_color_brewer(palette="Set2", direction = -1) + 
  labs(x = "Jahr", y = 'rel. Häufigkeit', color='') + 
  scale_x_continuous(breaks=seq(1993, 2018, 3))

ggsave("rafnsu.pdf", width=6, height=3)
                   

df <- read_csv('~/code/vsb-vis/trends/rechtsterror.csv')

ggplot(data = df, aes(x=year, y=count)) + geom_line(aes(colour=token), size=1) +
  dark_theme_gray() + scale_color_brewer(palette="Set2") + 
  labs(x = "Jahr", y = 'rel. Häufigkeit', color='Begriff') + 
  scale_x_continuous(breaks=seq(1993, 2018, 3)) + theme(legend.position = "none")

ggsave("rechtsterror.pdf", width=6, height=3)

df <- read_csv('~/code/vsb-vis/trends/cyber.csv')

ggplot(data = df, aes(x=year, y=count)) + geom_line(aes(colour=token), size=1) +
  dark_theme_gray() + scale_color_brewer(palette="Set2") + 
  labs(x = "Jahr", y = 'rel. Häufigkeit', color='Begriff') + 
  scale_x_continuous(breaks=seq(1993, 2018, 3)) + theme(legend.position = "none")

ggsave("~/code/vsb-vis/trends/cyber.pdf", width=6, height=3)


df <- read_csv('~/code/vsb-vis/trends/raf.csv')

ggplot(data = df, aes(x=year, y=count)) + geom_line(aes(colour=token), size=1) +
  dark_theme_gray() + scale_color_brewer(palette="Set2") + 
  labs(x = "Jahr", y = 'rel. Häufigkeit', color='Begriff') + 
  scale_x_continuous(breaks=seq(1993, 2018, 3)) + theme(legend.position = "none")

ggsave("~/code/vsb-vis/trends/raf.pdf", width=6, height=3)

