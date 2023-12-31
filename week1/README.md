# 作業

附註：.md 代表文章格式為 markdown，可自行上網搜尋相關教學，檔案內容請盡可能遵守[中文文案排版指北](https://github.com/sparanoid/chinese-copywriting-guidelines)。

## hw1：交作業流程

請用文字一步步敘述應該如何交作業。

範例：

1. 新開一個 branch：`git branch hw1`
2. 切換到 branch：`git checkout hw1`

請將答案寫在 [hw1.md](hw1.md)。

## hw2：教你朋友 CLI

學了一項東西之後若是想驗證自己是不是真的懂，教別人是最快的方法。

有天，你的麻吉 h0w 哥跑來找你說：「欸！能不能教我 command line 到底是什麼，然後怎麼用啊？我想用 command line 建立一個叫做 wifi 的資料夾，並且在裡面建立一個叫 afu.js 的檔案。就交給你了，教學寫好記得傳給我，ㄅㄅ」

可...可惡，居然這樣子就跑走了。但因為他是你的麻吉，所以你也沒辦法拒絕。

因此這個作業要請你寫一篇簡短的文章，試圖教會 h0w 哥什麼是 command line 以及如何使用，並且要教他如何達成他想要的功能。

請將答案寫在 [hw3.md](hw3.md)。

## hw3：跟你朋友介紹 Git

因為你的人實在是太好，時不時就會有朋友跑來找你來幫忙。

這次來的是一個叫做菜哥的朋友，會叫做菜哥是因為家裡賣菜，跟你認識的其他人同名的話純屬巧合。

菜哥：「就是啊，我最近有一個煩惱。因為我的笑話太多了，所以我目前都用文字檔記錄在電腦裡，可是變得越來越多之後很難紀錄，而且我的笑話是會演進的。會有版本一、版本二甚至到版本十，這樣我就要建立好多個不同的檔案，弄得我頭很痛，聽說你們工程師都會用一種程式叫做 Git 來做版本控制，可以教我一下嗎？」

『好吧，我試試看』

菜哥：「謝啦，話說你來參加這個計畫學程式真的選對了欸，之後就不會有貧血的困擾了」

『為什麼』

「因為你會寫程式」

『...』

「喔...原來是血乘四的部分啊（拍手）」

就是這樣，在一陣尬聊之中你答應了菜哥的要求，要教他怎麼使用 Git 來管理他的笑話。

因此，你必須教他 Git 的基本概念以及基礎的使用，例如說 add 跟 commit，若是還有時間的話可以連 push 或是 pull 都講，菜哥能不能順利成為電視笑話冠軍，就靠你了！

請將答案寫在 [hw4.md](hw4.md)。

## hw5：簡答題

請將答案寫在 [hw5.md](hw5.md)。

1. 假設我今天去 Google 首頁搜尋框打上：JavaScript 並且按下 Enter，請說出從這一刻開始到我看到搜尋結果為止發生在背後的事情。

## 挑戰題

有一種東西叫做 [shell script](http://linux.vbird.org/linux_basic/0340bashshell-scripts.php)，可以用 command line 指令以及一些語法寫成一個腳本，執行之後可以很方便地做很多事。

舉例來說，下面這個檔案我們存檔並取名叫做 test.sh：

``` bash
#!/bin/bash

touch "$1.js";
echo "檔案建立完成";
```

接著為了讓他可以執行，我們要更改檔案權限：`chmod +x test.sh`。

最後執行它：`./test.sh abc`，傳入參數`abc`。

就會建立一個叫做 abc.js 的檔案，這就是一個很簡單的 shell script。

現在請你寫一個 shell script，可以傳入一個數字 n，然後會產生 1~n 個檔案，檔名是 `{number}.js`。

舉例來說：`./num.sh 10`會產生`1.js`、`2.js`...`10.js`。

<details>
  <summary>提示 #1</summary>
  去找找看怎麼在 shell script 裡面寫迴圈吧！
</details>

## 超級挑戰題

請寫一個`github.sh`，可以傳入一個參數 username，執行之後就會輸出這個 GitHub 使用者的暱稱、介紹、地點跟個人網站。

備註：這題禁止使用 jq 這個指令。

範例：

```
./github.sh aszx87410

輸出：
Huli
Love coding, teaching, and writing. Believe sharing can make the world a better place.
Taipei, Taiwan
https://medium.com/@hulitw
```

<details>
  <summary>提示 #1</summary>
  你知道嗎？用這個網址可以取得使用者的資料：https://api.github.com/users/aszx87410
</details>

<details>
  <summary>提示 #2</summary>
  cut, grep, sed, awk 這些指令都是字串處理的好夥伴
</details>
