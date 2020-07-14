# Clustering and Mashine learning Lectures
There are two types of hierarchical clustering, Divisive and Agglomerative.
**Divisive method**	
*In divisive or top-down* clustering method we assign all of the observations to a single cluster and 
then partition the cluster to two least similar clusters. Finally, we proceed recursively on each 
cluster until there is one cluster for each observation. There is evidence that divisive algorithms 
produce more accurate hierarchies than agglomerative  algorithms in some circumstances but is 
conceptually more complex.		
 		
**Agglomerative method**
*In agglomerative or bottom-up* clustering method we assign each observation 
to its own cluster. Then, compute the similarity (e.g., distance) between each of the clusters and 
join the two most similar clusters. Finally, repeat steps 2 and 3 until there is only a single 
cluster left. The related algorithm is shown below.