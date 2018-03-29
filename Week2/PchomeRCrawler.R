library(httr)

#URL一開始不曉得是哪一個，後來看助教的結尾才找到，但是不曉得為什麼要用這個，不是用其他的。
URL<- "https://ecshweb.pchome.com.tw/search/v3.3/all/results?q=asus&page=1&sort=rnk/dc"

#從助教的檔案複製下面四行，一開始跑的時候還是顯示sony的，後來發現會顯示sony的是因為GET()裡面是url，
#但我用的是URL，所以把他換成URL之後，就顯示asus的了!
#但我還是不懂下面編碼的意義
#去看week_2.4.5的文章，好像懂一些，但還不是很清楚。研究prctice_3。看pipe%>%的功能。

res = GET(URL)
res_json = content(res)
do.call(rbind,res_json$prods)
View(data.frame(do.call(rbind,res_json$prods)))

#研究R Markdown看要怎麼轉成.Rmd

