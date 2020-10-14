<p align="center">
<img src="https://user-images.githubusercontent.com/68061154/95976426-7223fb80-0e52-11eb-9bba-5c219f15b2f4.png" width=40%>
</p>
<h2>Stearch!(スティーチ！)</h2>  
舞台公演検索アプリ（東京）  
  
## 🌐 App URL

### **http://www.stearch.site**  
basic認証  
ID     admin333  
pass   9999  
## 💬 Usage

`$ git clone https://github.com/mitsu0014/stearch.git`  
　
## :art: Top Page

<p align="center">
  <img src="https://user-images.githubusercontent.com/68061154/95977494-ea3ef100-0e53-11eb-8b48-4029ddd146b0.gif" width=70%>  
</p>　
  
## version
Ruby '2.6.5'  
Ruby on Rails '6.0.0'  
jquery '3.5.1'  
  
## 使用している言語    
HTML/CSS/Sass/Javascript/jQuery/Ruby/Ruby on Rails  
  
## 機能  
検索機能（Ransack)  
１クリックで今日に当てはまる公演を検索  
複数条件検索（曖昧検索、active hash)  
ユーザー登録（Facebook,Twitter,Google登録）  
※ゲストユーザー登録  
<今本番環境でのコールバックはできません>    
公演登録、編集、削除
URLリンク(rinku)  
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
