 <div class="center">
<p align="center"><img src="https://user-images.githubusercontent.com/523933/49741959-91a1da00-fc65-11e8-911f-521331f87174.png" align="center" width="20%" height="20%"></p>
  <h3 align="center">Clear Street</h3>
  <p align="center">
  Data Science Screening
</p>
</div>

---

Please read these instructions carfully as this repository contains parts of your interview. You will be given your own private version of this repository to complete your work. Only you and Clear Street members can view your repository.

You should take a branch of `master` to do your work. Once you are satisfied, create a pull-request with your notes and merge it your work into `master`. The pull-request will let us know you are finished.

## Q&A

The following sections contain questions that you should answer inline in this README.md file. Below each question, insert your response using tasteful Markdown choices.

### Tooling

Provide your perference for each of the categories below. (There's no right or wrong here)

1. operating system?
- [x] Mac OS, Linux

2. text editor?
- [x] Sublime, Xcode, vim

3. terminal type?
- [x] Normal terminal app

4. scripting languauge?
- [x] Python 

## Real world problem
We have provided a dataset in the `data/` directory that describes the electricity usage for various households in Ireland over a period of 4 months.

Your goal is to answer the following questions. Please use Python to answer the questions. You can implement this using any libraries you wish, or Jupyter Notebook, or anything else! This is designed to open ended on purpose, we want to see how you think.

### Irish Electricity Dataset

```
(Ref: ) means to refer from iPython notebook. 
```


 - Load the data, and print out a subset of it (any subset is fine)

 **Answer**:
- [x] There are 151 households with about 2.5 residents and 3.6 bedrooms on average. Since the maximum of Age is 6, I would assume Age does not indicate the absolute age , but rather the level (such as 6 being the oldest) (Ref: 1.1)



 - Print out All households with more than 3 residents
 
  **Answer**:
  
 - [x] There are 30 households with more than 3 residents (Ref: 1.2). 
 

 - Lets narrow down even more, lets print all households with more than 3 residents and a education level greater than 4
 
 **Answer**:
 - [x] There are 14 households with more than 3 residents and education level grater than 4 (Ref: 1.3). 
 


 - Interesting stuff right? Ok, lets do some analysis. Find out if there is some linear correlation between the number of residents and the electricty usage. For refrence the columns V1-V121 are the electricity usage values through time. Please parse this as you wish and tell us how you chose to parse it.
 
 **Answer**:
 
 - [x] To find liner correlation between number of residents and the electricity usage, I calcuate the average on the total usage of electricity for each household througout the panel. The result is about 30% correlation between them. (Ref : 1.4)
 
- [x] In figure 1, the scatter plot (grouped by the number of residents) shows that there are some data points which are skewed than the average. Before removing outliers, I fit linear model, targeting average electricity consumption with the rest of parameters. The reason is to find the highest weight among parameters. As expected, number of bedroom has higher weight than that of residents. And the correlation is about 54%. Figure 2 shows that the data points among each group (number of bedrooms) can be fit into a better linear model than figure 1's scatter plot. 
  
  - [x] I chose to remove outliers by grouping the number of bedroom. There are a couple of reasons behind choosing this over number of residents. For one, number of bedroom has more weight as shown above. Moreover, it makes more sense that fewer residents but with more rooms will assume more electricity on average. For example, there are two households with one resident each which consume more than 30 unit (which is the middle quantile for households with 4 and 5 bedrooms). (Ref: 1.6 and 1.7)
  
  - [x] I chose to remove data points which are beyond 2 standard deviation. The correlation between number of bedroom has improved  to about 68% from 54%. (Ref: 1.9)
 


 - [x]Show us a plot of the residents VS electrity with any other lines or points you wish.
 
 **Answer**:
 
-[x] As explained above, please see figure 1,2,3. 


 - Please also create a comparison of House ID: 803 VS House ID: 3613
 
 
 **Answer**:
 
- [x] 3613 is a larger houshold with more bedroom (5 vs 3) and more resident (5 vs 1). It also consumed about 35% more electricity on average throgouht 121 days. However, plotting them over time gives us more interesting information. (Ref: 2)
 


 - Plot the energy usage over time (V1-V121) for these two houses 
 
 
 Figure 4 which represnets the energy usage over time for both 803 and 3613 tells us : 
 
  **Answer**:
 
- [x] There is a sudden drop in energy consumption for both households after about 45th or 48th day. The reason could be the weather change(such as approaching winter or summer), national disaster, or change in energy policy such as higher utility bill.

- [x] Hence, the figure 5 is drawn to show the trend of electricity usage on population wise. It becomes clear that government raises the bill and hence people started using less after the affected date. The huge spike on day 40th also could be the fact that people use more electricity before the affected date.

- [x] Figure 4 already shows the comparision between energy usage by house 803 and that of 3613. House 3613 (which has more rooms and residents) use more electricity after the policy change. 

- [x] After averaging (see below) the usage for both households before and after 45th day, we can see that house 3613 could only use 12.51% whereas 803 could drop by 34.82 %. (Ref: 2.3 and figure 5) 

- [x] It makes sense to think that one resident with 3 bedrooms can manage to reduce than five residents with five bedrooms. This reaffirms our theory that government raises the utility price. 


 
 

 - Lets fully analyze this data. Please print the pairwise correlation of columns coefficients for all the covariates versus the average energy usage for the household over the recording period. (A plot might be helpful too)
 
 
 **Answer**:
 
- [x]  After doing pairwise correlation as explained above in 1.4, bedroom and average electricity consumption has more weight than resident.
 


---

Good analysis! Just to finish things up, here are a couple brain teasers meant to flex your Python skills.

 **Answer**:

- [x] All of the exercise below can be found in iPython notebook.


 - Please describe what the `zip` function does.
 - Write a list comprehension to create a list of all even numbers between 0 and 30
 - You have a DataFrame df with a column 'A' of integers. For example:
```
df = pd.DataFrame({'A': [1, 2, 2, 3, 4, 5, 5, 5, 6, 7, 7]})
```
How do you filter out rows which contain the same integer as the row immediately above?
 - A DataFrame has a column of groups 'grps' and and column of numbers 'vals'. For example:
```
df = pd.DataFrame({'grps': list('aaabbcaabcccbbc'), 
                   'vals': [12,345,3,1,45,14,4,52,54,23,235,21,57,3,87]})
```
For each group, find the sum of the three greatest values.
