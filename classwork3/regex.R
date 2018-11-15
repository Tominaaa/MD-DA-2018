# Загрузите данные о землятресениях
anss <- readLines("https://raw.githubusercontent.com/SergeyMirvoda/MD-DA-2017/master/data/earthquakes_2011.html", warn=FALSE)

# Выберите строки, которые содержат данные с помощью регулярных выражений и функции grep
pattern <- "^[0-9]+/[0-9]+/[0-9]+ [0-9]+:[0-9]+:[0-9]+\\.[0-9]+,-?[0-9]+\\.[0-9]+,-?[0-9]+\\.[0-9]+,-?[0-9]+\\.[0-9]+,-?[0-9]+\\.[0-9]+,[a-zA-Z]+,[0-9]+,,,-?[0-9]+\\.[0-9]+,[a-zA-Z]+,[0-9]+$"
result <- result[grep(pattern, anss)]

# Проверьте что все строки (all.equal) в результирующем векторе подходят под шаблон.
all.equal(result, pattern)