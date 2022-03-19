# A more difficult query

Let's try a more difficult query. How do you determine with which stars have Quentin Tarantino worked with? You might realize that for this question you need the three nodes "Movie", "Director" and "Star" and their relationships. The following query will give you the answer for that question.

`MATCH (d:Director {director: "Quentin Tarantino"}) -[:DIRECTED]-> (m:Movie) <-[:PLAYEDIN]- (s:Star) RETURN d.director, m.name, s.star;`{{execute}}

This query looks almost identical with our last statement from the previous step. The only thing that changed is that we added `<-[:PLAYEDIN]- (s:Star)` after the movie node. This allows us to search for the star that played in the movie which was directed by Quentin Tarantino. As you can see, the `MATCH` clause allows us to specify patterns that can include multiple relationships.

# Sorting

What if from our last result we want to know which movie had the best score. Cypher queries allows us to sort the results by their values. Try the following query:

```
MATCH (d:Director {director: "Quentin Tarantino"}) -[:DIRECTED]-> (m:Movie) <-[:PLAYEDIN]- (s:Star)
RETURN d.director, m.name, m.score, s.star
ORDER BY m.score DESC
LIMIT 1
```{{execute}}

As you can see the combination of the `ORDER` clause and the `LIMIT` clause allows you to order the movies by the score and then select the best one. 