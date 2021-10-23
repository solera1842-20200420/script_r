# hierarchical clustering
library(tidyverse)

# dataset
infile='./data/DM_sampledata/ch5_3.txt'
d <- read.csv(file = infile, sep = '')
d

# distance
d_dist <- dist(d)

# clustering
d_hcl <- hclust(d_dist, "ward.D2")

# plot
plot(d_hcl)

# pruning
cutree(d_hcl, 3)
cluster_ward <- cutree(d_hcl, 3)
plot(cluster_ward)
