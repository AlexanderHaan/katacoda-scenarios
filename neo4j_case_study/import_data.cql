LOAD CSV WITH HEADERS FROM "file:///movies.csv" AS line FIELDTERMINATOR ',' WITH line 
    WHERE line.name IS NOT NULL
    AND line.budget IS NOT NULL 
    AND line.gross IS NOT NULL
    AND line.rating IS NOT NULL
    AND line.company IS NOT NULL
    AND line.runtime IS NOT NULL
MERGE (m:Movie {name: line.name,
    rating: line.rating,
    year: line.year,
    released: line.released,
    score: line.score,
    votes: line.votes,
    budget: line.budget,
    gross: line.gross,
    runtime: line.runtime})
MERGE (w:Writer {writer: line.writer})
MERGE (g:Genre {genre: line.genre})
MERGE (d:Director {director: line.director})
MERGE (s:Star {star: line.star})
MERGE (c:Country {country: line.country})
MERGE (cp:Company {company: line.company})
MERGE (w) -[:WROTE]-> (m)
MERGE (m) -[:IS]-> (g)
MERGE (d) -[:DIRECTED]-> (m)
MERGE (s) -[:PLAYEDIN]-> (m)
MERGE (m) -[:FILMEDIN]-> (c)
MERGE (cp) -[:PRODUCED]-> (m);