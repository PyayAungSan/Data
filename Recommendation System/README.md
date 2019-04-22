
This is a machine learning project to make recommendations based on the instructions by Adam Geltgey from Lynda. As every other machine learning projects, if you understand what you are doing, implementation is not as difficult since there are many machine learning libraries.  

### Project Goal

Our system will be able to recommend new movies to users based on the reviews of movies they have already seen. 


### 2 Ways of Making Recommendations

Generally, there are two types of recommendations: Content-based recommendations and Collaborative filtering.

1. **Content-based recommendations:Recommending based on product attributes**

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



So, we can recommend the romance movies to the users who scored high in romance. Here in this example, Sabrina has a high rank on Romance just as Roman Holiday whereas The Third Man and Notorious are Suspense type of movie. Hence, John have a high chance of getting recommended to Sabrina movie. 



#### Advantages : 

- [x] Works even when a product has no user reviews. 

#### Disadvantages : 

- [x] Need descriptive data for every product you want to recommend
- [x] Difficult to implement for many kinds of large product databases 


2. **Collaborative Filtering: Recommending based on similar users**

   In Collaborative Filtering, no knowledge about the product is needed. It is making recommendations only based on how users rated products in the past. 


#### User Ratings


| User   | Roman Holiday | Sabrina | The Third Man | Notorious       |
|--------|---------------|---------|---------------|-----------------|
| Susan  | 1 star        | 1 star  | 5 stars       | 5 stars         |
| John   | 5 stars       |[5 stars]| 1 star        | [1.5 star]      |
| Bob    | 5 stars       | 5 stars | 1 star        | 2 stars         |
| Alice  | 1 star        | 1 star  | 5 stars       | 5 stars         |

Let's say we want to recommend a movie to John, what movie should we recommend Sabrina or Notorious ? We can see that John Reviews are very similar to Bob Review.They both gave Roman Holiday five stars and the Third Man one start. The same situation goes to Susan and Alice. 


#### Advantages : 

- [x] Doesn't require any knowledge about the products themselves 

#### Disadvantages : 

- [x] Only works if there already is user reviews 
- [x] Hence , it is difficult to make good recommendations for brand-new users
- [x] Tend to favor popular products with lots of reviews. That will make it hard to recommend for new releases since they are not often recommended.


 




 