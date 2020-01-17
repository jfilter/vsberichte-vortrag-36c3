library(tidyverse)
library(ggdark)
library(plyr)

df <- read_csv2('https://verfassungsschutzberichte.de/api/mentions?q=%22rote%20hilfe%22&csv&min_year=1993')
df$juris <-tools::toTitleCase(df$juris)
df$juris <- revalue(df$juris, c("Nordrhein-Westfalen"="NRW"))
df$juris <- revalue(df$juris, c("Mecklenburg-Vorpommern"="Meck-Pomm"))
df$count[df$count > 0 ] <- df$count[df$count > 0 ] + 10
df$count[df$count < 0 ] <- df$count[df$count < 0 ] - 10

df <- df %>% mutate(count = replace(count, which(count<0), NA))
df$juris <- factor(df$juris, levels = append(setdiff(rev(sort(unique(df$juris))), c('Bund')), 'Bund'))


ggplot(data=df, aes(x = year, y=juris, fill=count)) +
  geom_tile(color='black', size=1) + 
  scale_fill_gradient2(name = "value", midpoint = 15, na.value = "grey30", low = "black", mid='brown4', high = "brown1", guide=FALSE) +
  dark_theme_gray() + labs(x='', y='') + scale_x_continuous(sec.axis = dup_axis(), expand = c(0, 0), breaks=seq(1993, 2018, 3)) +
  theme(axis.ticks.y = element_blank())

ggsave('~/code/vsb-vis/mentions/rh.pdf', width=6, height=3.5)



df <- read_csv2('https://verfassungsschutzberichte.de/api/mentions?q=%22ums%20ganze%22&csv&min_year=1993')
df$juris <-tools::toTitleCase(df$juris)
df$juris <- revalue(df$juris, c("Nordrhein-Westfalen"="NRW"))
df$juris <- revalue(df$juris, c("Mecklenburg-Vorpommern"="Meck-Pomm"))
df$count[df$count > 0 ] <- df$count[df$count > 0 ] + 10
df$count[df$count < 0 ] <- df$count[df$count < 0 ] - 10

df <- df %>% mutate(count = replace(count, which(count<0), NA))
df$juris <- factor(df$juris, levels = append(setdiff(rev(sort(unique(df$juris))), c('Bund')), 'Bund'))


ggplot(data=df, aes(x = year, y=juris, fill=count)) +
  geom_tile(color='black', size=1) + 
  scale_fill_gradient2(name = "value", midpoint = 11, na.value = "grey30", low = "black", mid='brown4', high = "brown1", guide=FALSE) +
  dark_theme_gray() + labs(x='', y='') + scale_x_continuous(sec.axis = dup_axis(), expand = c(0, 0), breaks=seq(1993, 2018, 3)) +
  theme(axis.ticks.y = element_blank())

ggsave('~/code/vsb-vis/mentions/ug.pdf', width=6, height=3.5)


df <- read_csv2('https://verfassungsschutzberichte.de/api/mentions?q=%22interventionistische%20linke%22&csv&min_year=1993')
df$juris <-tools::toTitleCase(df$juris)
df$juris <- revalue(df$juris, c("Nordrhein-Westfalen"="NRW"))
df$juris <- revalue(df$juris, c("Mecklenburg-Vorpommern"="Meck-Pomm"))
df$count[df$count > 0 ] <- df$count[df$count > 0 ] + 10
df$count[df$count < 0 ] <- df$count[df$count < 0 ] - 10

df <- df %>% mutate(count = replace(count, which(count<0), NA))
df$juris <- factor(df$juris, levels = append(setdiff(rev(sort(unique(df$juris))), c('Bund')), 'Bund'))


ggplot(data=df, aes(x = year, y=juris, fill=count)) +
  geom_tile(color='black', size=1) + 
  scale_fill_gradient2(name = "value", midpoint = 13, na.value = "grey30", low = "black", mid='brown4', high = "brown1", guide=FALSE) +
  dark_theme_gray() + labs(x='', y='') + scale_x_continuous(sec.axis = dup_axis(), expand = c(0, 0), breaks=seq(1993, 2018, 3)) +
  theme(axis.ticks.y = element_blank())

ggsave('~/code/vsb-vis/mentions/il.pdf', width=6, height=3.5)


df <- read_csv2('https://verfassungsschutzberichte.de/api/mentions?q=VVN&csv&min_year=1993')
df$juris <-tools::toTitleCase(df$juris)
df$juris <- revalue(df$juris, c("Nordrhein-Westfalen"="NRW"))
df$juris <- revalue(df$juris, c("Mecklenburg-Vorpommern"="Meck-Pomm"))
df$count[df$count > 0 ] <- df$count[df$count > 0 ] + 10
df$count[df$count < 0 ] <- df$count[df$count < 0 ] - 10

df <- df %>% mutate(count = replace(count, which(count<0), NA))
df$juris <- factor(df$juris, levels = append(setdiff(rev(sort(unique(df$juris))), c('Bund')), 'Bund'))


ggplot(data=df, aes(x = year, y=juris, fill=count)) +
  geom_tile(color='black', size=1) + 
  scale_fill_gradient2(name = "value", midpoint = 11, na.value = "grey30", low = "black", mid='brown4', high = "brown1", guide=FALSE) +
  dark_theme_gray() + labs(x='', y='') + scale_x_continuous(sec.axis = dup_axis(), expand = c(0, 0), breaks=seq(1993, 2018, 3)) +
  theme(axis.ticks.y = element_blank())

ggsave('~/code/vsb-vis/mentions/vvn.pdf', width=6, height=3.5)


