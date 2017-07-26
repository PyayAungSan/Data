                                               # Machine Learning Algorithms
             
These fundamental ML algorithms are written according to the equations instructed by free yet amazing Andrew Ng's Stanford Machine learning course. The course is mainly instructed in MATLAB. But I wrote in Python to practice myself. I additionally use Python's in-house ready-made scikit-learn and Google's tensor flow libraries to understand better.
                                               
                                               
#### Linear Regression

Although the data set used has few features, this well implemented linear regression will significantly minimize the cost function (error). 

###### Cost Function

![alt text](https://github.com/PyayAungSan/Machine-Learning/blob/master/img/Cost%20Function.png)

where the hypothesis is given by this linear model

![alt text](https://github.com/PyayAungSan/Machine-Learning/blob/master/img/hypothesis.png). The weights (theta values) will be adjusted to minimize the cost function. One way to do that is to use **batch gradient descent** algorithm in which each iteration performs the update as follows:

![alt text](https://github.com/PyayAungSan/Machine-Learning/blob/master/img/gd.png)


                                               
