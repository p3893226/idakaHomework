# Google 首頁搜尋框打上：JavaScript 並且按下 Enter後，從這一刻開始到看到搜尋結果為止發生在背後的事情
## 第一件就是要知道 IP 
先向 DNS 詢問，DNS 就像大型的電話簿，裡面記載著 Domain name 對應的 IP 位址。  
1. 檢查本地的 DNS 快取。
2. 檢查電腦中的 .host 檔。
3. 向 DNS 司服器發送詢問。
## TCP 建立連線
取得 IP 位址後，會透過 TCP 三次握手建立連線。
1. Client 向 Server 發送 SYN packet
2. Server 收到後，回復 SYN/ACK packet
3. Client 收到後，再向 Server 發送 ACK packet
接著會依照 IP 及對應的 Port，將資料打包成一個個封包，經由 TCP 傳輸 Server 端。
## Server 端
Server 經過一些處理之後，將資料以 HTTP response，其中包含 HTTP status code、Content-Encoding、Cache-Control、Cookie 等 Header。
+ 1XX 某種消息
+ 2XX 成功
+ 3XX 轉導
+ 4XX Client 端出錯
+ 5XX Server 端出錯
## Client 端瀏覽器渲染頁面
Server 的 response 是一個HTML 文件，瀏覽器會解析 HTML 的內容，並繪製到螢幕上。
1. 處理 HTML 建立 DOM tree
2. 處理 CSS 建立 CSSOM tree
3. DOM tree + CSS tree -> render tree
4. 在 render tree 上執行 layout
5. 將所有節點繪製到螢幕上
