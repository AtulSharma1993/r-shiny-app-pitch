

Shiny Application: classify and predict
========================================================
author: D.V.
date: 07/06/20
autosize: true

Synopsis
========================================================
At this project we make the prediction Shiny-app which can classify your Iris flower by its measures, based on Edgar Anderson's Iris Data. For prediction we use rpart decision tree model.

Edgar Anderson's Iris Data is famous (Fisher's or Anderson's) iris data set gives the measurements in centimeters of the variables sepal length and width and petal length and width, respectively, for 50 flowers from each of 3 species of iris (setosa, versicolor, and virginica).

Data
========================================================
We use classical dataset: Fisher R.A. (1936) The use of multiple measurements in taxonomic problems / Annals of Eugenics.

```r
data(iris)
head(iris, n=3)
```

```
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
```

Our classificator
========================================================
We train the desicion tree classificator (rpart tree) by whole data because we don't need to choose best model, we need just interpolar prediction.



```
processing file: pitch.Rpres
Quitting from lines 30-32 (pitch.Rpres) 
Ошибка в as.data.frame.default(data, optional = TRUE) :
  cannot coerce class '"function"' to a data.frame
Вызовы: knit ... terms.formula -> as.data.frame -> as.data.frame.default
Выполнение остановлено
```
