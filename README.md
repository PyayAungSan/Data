
### Irish Electricity Dataset

```
(Ref: ) means to refer from iPython notebook. 
```

 **Households with average number of residents and bedrooms**:
- [x] There are 151 households with about 2.5 residents and 3.6 bedrooms on average. Since the maximum of Age is 6, I would assume Age does not indicate the absolute age , but rather the level (such as 6 being the oldest) (Ref: 1.1)


 
 **3 resident and an education level greater than 4**:
 - [x] There are 14 households with more than 3 residents and education level grater than 4 (Ref: 1.3). 
 


 **linear correlation between the number of residents and the electricty usage**
 
 - [x] To find liner correlation between number of residents and the electricity usage, I calcuate the average on the total usage of electricity for each household througout the panel. The result is about 30% correlation between them. (Ref : 1.4)
 
- [x] In figure 1, the scatter plot (grouped by the number of residents) shows that there are some data points which are skewed than the average. Before removing outliers, I fit linear model, targeting average electricity consumption with the rest of parameters. The reason is to find the highest weight among parameters. As expected, number of bedroom has higher weight than that of residents. And the correlation is about 54%. Figure 2 shows that the data points among each group (number of bedrooms) can be fit into a better linear model than figure 1's scatter plot. 
  
  - [x] I chose to remove outliers by grouping the number of bedroom. There are a couple of reasons behind choosing this over number of residents. For one, number of bedroom has more weight as shown above. Moreover, it makes more sense that fewer residents but with more rooms will assume more electricity on average. For example, there are two households with one resident each which consume more than 30 unit (which is the middle quantile for households with 4 and 5 bedrooms). (Ref: 1.6 and 1.7)
  
  - [x] I chose to remove data points which are beyond 2 standard deviation. The correlation between number of bedroom has improved  to about 68% from 54%. (Ref: 1.9)

 
 ** a plot of the residents VS electrity**:
 
-[x] As explained above, please see figure 1,2,3. 

 
 **a comparison of House ID: 803 VS House ID: 3613**:
 
- [x] 3613 is a larger houshold with more bedroom (5 vs 3) and more resident (5 vs 1). It also consumed about 35% more electricity on average throgouht 121 days. However, plotting them over time gives us more interesting information. (Ref: 2)
 


  **the energy usage over time for both 803 and 3613**:
 
- [x] There is a sudden drop in energy consumption for both households after about 45th or 48th day. The reason could be the weather change(such as approaching winter or summer), national disaster, or change in energy policy such as higher utility bill.

- [x] Hence, the figure 5 is drawn to show the trend of electricity usage on population wise. It becomes clear that government raises the bill and hence people started using less after the affected date. The huge spike on day 40th also could be the fact that people use more electricity before the affected date.

- [x] Figure 4 already shows the comparision between energy usage by house 803 and that of 3613. House 3613 (which has more rooms and residents) use more electricity after the policy change. 

- [x] After averaging (see below) the usage for both households before and after 45th day, we can see that house 3613 could only use 12.51% whereas 803 could drop by 34.82 %. (Ref: 2.3 and figure 5) 

- [x] It makes sense to think that one resident with 3 bedrooms can manage to reduce than five residents with five bedrooms. This reaffirms our theory that government raises the utility price. 


 
 
 **pairwise correlation of columns coefficients for all the covariates versus the average energy usage for the household over the recording period.**:
 
- [x]  After doing pairwise correlation as explained above in 1.4, bedroom and average electricity consumption has more weight than resident.
 


