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
  <img src="https://user-images.githubusercontent.com/68061154/96071512-44d05f80-0edd-11eb-90c8-676ad0ecd91b.gif" width=70%>  
</p>　
    
## 機能一覧  
### 検索機能（Ransack)
●１クリックで今日行われている公演の検索機能  
●複数条件検索機能  
　　○キーワード検索  
　　○Active Hash  
　　○Radio Button  
　　○開演日から終演日までの期間検索  
　　○並び替え機能  
●リザルトページ  
　　ページネーション機能(kaminari)  
### ユーザー登録機能
●ログイン・サインアップ機能(devise)  
　　○メールアドレス登録・ログイン  
　　○omniauth認証SNS登録・ログイン（Facebook,Twitter,Google登録）  
### 公演登録機能
●マイページ機能  
　　○画像投稿(Active Storage)  
　　○公演登録・編集・削除  
　　○登録した公演一覧  
　　○いいねした公演一覧  
●詳細ページ機能  
　　○URLリンク(rinku)  
　　○非同期いいね機能(ログインユーザーのみ利用可能)  
　　Twitterシェア機能  
### ヘッダー
●ユーザー登録・ログインボタンモーダル表示  
●サイドメニュー（アコーディオンメニュー）  
## 環境  
### Code
HTML/CSS/Sass/Javascript/jQuery3.5.1'/Ruby'2.6.5'/Ruby on Rails'6.0.0'  
●単体・結合テストコード(Rspec/Capybara)  
### 本番環境  
●AWS（EC2/S3/Routes53/Amazon Linux2/Cloud Front）  
●アプリケーションサーバー（Unicorn）  
●Webサーバー（Nginx）  
●データベース（mariaDB）  
●自動デプロイ（Capistrano）  
  
## ER
<p align="center">
  <img src="https://user-images.githubusercontent.com/68061154/95981708-08a7eb00-0e5a-11eb-8da0-6c3c19fb2d48.png" width=70%>  
</p>

## 概要