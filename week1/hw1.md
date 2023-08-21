# 交作業流程
1. 將資料夾 fork 到自己的 GitHub。
2. 打開 Terminal，`cd` 到桌面，到 GitHub 將資料夾 `git clone` 下來。
3. `cd idakaHomework` 進到資料夾裡。
4. `gb weekx` 開一個新分支。
5. `gco weekx` 切換到新分支。
6. `cd weekx` 進到第一週資料夾。
7. `touch hwx.md`，`vim hwx.md` 或 `nano hwx.md`  開始寫作業。
8. 寫完後先 `git add .`，再 `git commit -m "..."`。 
9. 接著 `gco main` 到主分支，再 `git merge weekx` 合併。
10. `git push origin main` 推到自己的 GitHub，最後發 Pull Requests。
