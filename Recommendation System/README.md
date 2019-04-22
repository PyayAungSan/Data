
This is a machine learning project to make recommendations based on the instructions by Adam Geltgey from Lynda. As every other machine learning projects, if you understand what you are doing, implementation is not as difficult since there are many machine learning libraries.  

### Project Goal

Our system will be able to recommend new movies to users based on the reviews of movies they have already seen. 


### 2 Ways of Making Recommendations

Generally, there are two types of recommendations: Content-based recommendations and Collaborative filtering.

1. Content-based recommendations:Recommending based on product attributes

   Content-based recommendation system uses knowledge about each product to recommend new products. For instance, if you watch a romantic comedy movie and rates 5 starts since you really like it. Then, you will be recommended another high rated romantic comedy movie with common attributes. 



#### User Ratings


| User   | Roman Holiday | Sabrina | The Third Man | Notorious       |
|--------|---------------|---------|---------------|-----------------|
| Susan  |               |         | 5 stars       |                 |
| John   | 5 stars       |         |               |                 |
| Bob    |               |         |               | 2 stars         |
| Alice  |               | 1 star  |               |                 |


Here in this table, John has already given 5 stars rating to Roman Holiday which is a Romance movie. What movie should we recommend next to John ?

In content-based recommendation system, we will also have  details about each movie - 

#### Movie Ratings 

| Movie         | Romance | Suspense | Action | Music  |
|---------------|---------|----------|--------|--------|
| Roman Holiday | 5       | 1        | 1      | 3      |
| Sabrina       | 5       | 2        | 1      | 2      |
| The Third Man | 2       | 5        | 3      | 1      |
| Notorious     | 1       | 5        | 3      | 1      |



So, we can recommend the romance movies to the users who scored high in romance. Here in this example, Sabrina has a high rank on Romance just as Roman Holiday whereas The Third Man and Notorious are Suspense type of movie. Hence, John have a high chance of getting recommendation to Sabrina movie. 



#### Advantages : 

- [x] Works even when a product has no user reviews. 

#### Disadvantages : 

- [x] Need descriptive data for every product you want to recommend
- [x] Difficult to implement for many kinds of large product databases 




```
(Ref: ) means to refer from iPython notebook. 
```


 

 **Answer**:
- [x] There are 151 households with about 2.5 residents and 3.6 bedrooms on average. Since the maximum of Age is 6, I would assume Age does not indicate the absolute age , but rather the level (such as 6 being the oldest) (Ref: 1.1)



 