<p align="center">
<img src="https://user-images.githubusercontent.com/68061154/95976426-7223fb80-0e52-11eb-9bba-5c219f15b2f4.png" width=50%>
</p>
<h2>Stearch!(スティーチ！)</h2>  
東京都の舞台公演を検索するアプリです。  
今日行われている公演をワンクリックで検索、または、複数条件を指定・絞り込みで検索します。  
　  
トップページの検索機能はログイン不要で利用できます。  
公演登録、いいね機能はヘッダーからユーザー登録をし、マイページから利用することができます。
## 🌐 App URL

### **http://www.stearch.site**  
basic認証  
ID     admin333  
pass   9999  
ヘッダーの【ゲスト】ボタンからログインできます。
　
## :art: Top Page

<p align="center">
  <img src="https://user-images.githubusercontent.com/68061154/95977494-ea3ef100-0e53-11eb-8b48-4029ddd146b0.gif" width=70%>  
</p>　
  
## 使用している言語    
HTML/CSS/Sass/Javascript/jQuery3.5.1'/Ruby'2.6.5'/Ruby on Rails'6.0.0'  
  
## 機能  
検索機能（Ransack)  
１クリックで今日に当てはまる公演を検索  
複数条件検索（曖昧検索、active hash)  
ユーザー登録（Facebook,Twitter,Google登録）  
※ゲストユーザー登録  
<今本番環境でのコールバックはできません>    
公演登録、編集、削除  
URLリンク(rinku)  
Twitterシェアボタン  
サイドメニュー（アコーディオンメニュー）  
ページネーション(kaminari)  
いいね機能（非同期）  
いいねした公演一覧  
単体・結合テストコード(Rspec/Capybara)  
  
## インフラ  
AWS（EC2/S3/Routes53/Amazon Linux2/Cloud Front）  
Active Storage  
アプリケーションサーバー（Unicorn）  
Webサーバー（Nginx）  
データベース（mariaDB）  
自動デプロイ（Capistrano）  
  
## ER
<p align="center">
  <img src="https://user-images.githubusercontent.com/68061154/95981708-08a7eb00-0e5a-11eb-8da0-6c3c19fb2d48.png" width=70%>  
</p>

## 概要