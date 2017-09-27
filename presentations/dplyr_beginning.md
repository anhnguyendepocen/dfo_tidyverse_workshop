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




Starting up:
========================================================
To make sure everyone's on the same page, run this block of code:





```r
library(readr)
library(tidyr)
library(dplyr)


dune_env = read_csv("data/dune.env.csv")

dune_cover = read_csv("data/dune.csv") %>%
  gather(key = species,value = cover_class, Achimill:Callcusp)

head(dune_cover,n = 3)
```

```
# A tibble: 3 x 3
    site  species cover_class
   <chr>    <chr>       <int>
1 site_1 Achimill           1
2 site_2 Achimill           3
3 site_3 Achimill           0
```



Starting up:
========================================================
To make sure everyone's on the same page, run this block of code:



```r
trawl_abiotic = read_csv("data/trawl_abiotic.csv",col_types = cols(depth="d"))

trawl_biomass = read_csv("data/trawl_biomass.csv")%>%
  gather(key = species, value = biomass, shrimp:redfish)

head(trawl_biomass, n=3)
```

```
# A tibble: 3 x 4
   year trawl_id species biomass
  <int>    <int>   <chr>   <dbl>
1  1995        1  shrimp   62.39
2  1995        2  shrimp   29.86
3  1995        3  shrimp   46.04
```



What is dplyr?
==============
incremental: true
Manipulates data within a data frame

Basic verbs: 
* select
* join
* group_by
* filter
* mutate
* summarize


What is dplyr?
==============
Manipulates data within a data frame

Basic verbs: 
* **select**
* **join**
* **group_by**
* **filter**
* mutate
* summarize




select(): Removing columns
========================================================
incremental: true

<div align="center">
<img src="select.png" width=550>
</div>

* Removes columns
* Can use just column names to keep, column names to remove
* Can also use ranges of either (`select(data, A:C)`, `select(data, -(C:D)`)


left_join(): Adds columns from one data frame to another
========================================================


<div align="center">
<img src="left_join.png" width=550>
</div>


Using this on the dune data set
=================================
incremental: true















```
processing file: dplyr_beginning.Rpres

Attaching package: 'dplyr'

The following objects are masked from 'package:stats':

    filter, lag

The following objects are masked from 'package:base':

    intersect, setdiff, setequal, union

Parsed with column specification:
cols(
  site = col_character(),
  A1 = col_double(),
  Moisture = col_integer(),
  Management = col_character(),
  Use = col_character(),
  Manure = col_integer()
)
Parsed with column specification:
cols(
  .default = col_integer(),
  site = col_character()
)
See spec(...) for full column specifications.
Parsed with column specification:
cols(
  year = col_integer(),
  trawl_id = col_integer(),
  shrimp = col_double(),
  cod = col_double(),
  halibut = col_double(),
  redfish = col_double()
)
Joining, by = "site"
Quitting from lines 124-129 (dplyr_beginning.Rpres) 
Error: `count` must resolve to integer column positions, not a function
Execution halted
```
