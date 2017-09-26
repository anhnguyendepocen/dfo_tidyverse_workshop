dplyr basics: filtering, selecting, grouping, and connecting tibbles
========================================================
author: 
date: 
autosize: true
width: 1440
height: 900
<div align="center">
<img src="dplyr_hex.png" width=500 height=500>
</div>





What is dplyr?
==============
incremental: true
Manipulates data within a data frame

Basic verbs: 
* group_by
* filter
* select
* join
* mutate
* summarize


What is dplyr?
==============
Manipulates data within a data frame

Basic verbs: 
* **group_by**
* **filter**
* **select**
* **join**
* mutate
* summarize

Starting up:
========================================================
To make sure everyone's on the same page, run this block of code:


```r
library(readr)
library(tidyr)
library(dplyr)


dune_env = read_csv("data/dune.env.csv")

dune_counts = read_csv("data/dune.csv") %>%
  gather(key = species,value = count, Achimill:Callcusp)

head(dune_counts,n = 3)
```

```
# A tibble: 3 x 3
    site  species count
   <chr>    <chr> <int>
1 site_1 Achimill     1
2 site_2 Achimill     3
3 site_3 Achimill     0
```
