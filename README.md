<p align="center">
<img src="https://user-images.githubusercontent.com/68061154/95976426-7223fb80-0e52-11eb-9bba-5c219f15b2f4.png" width=50%>
</p>

## Stearch!(スティーチ！)
東京都の舞台公演を検索するアプリです。  
今日行われている公演をワンクリックで検索、または、複数条件を指定・絞り込みで検索します。  
トップページの検索機能はログイン不要で利用できます。  
公演登録、いいね機能はヘッダーからユーザー登録をし、マイページから利用することができます。  
## 🌐 App URL
### **https://www.stearch.site**  
ヘッダーの【ゲスト】ボタンからログインできます。
　
## 🌐 Top Page

<p align="center">
  <img src="https://user-images.githubusercontent.com/68061154/96071512-44d05f80-0edd-11eb-90c8-676ad0ecd91b.gif" width=70%>  
</p>　

## 🌐 制作背景（課題解決）  
### Why
#### 舞台作品を見にいきたいな、行ってみたいなとふと思ったとき、手軽に調べられるアプリがない！  
舞台は、公演情報を調べて→チケットを手配して→チケットを持って遠くに移動して→ようやく見ることができます。そのストーリーは観劇ならではのオリジナリティであると同時に、不便さによって観客が離れていく原因でもあります。  
舞台も、映画のように「スキマ時間に観劇」することは可能であると考えており、このアプリは舞台市場を発展させる一旦なるように開発致しました。  
#### 他の検索サイトとの違い  
同じ検索機能を持ったチケットサイト(ローチケ・チケットぴあ等)では、何を観劇するか決まっている前提で、そのチケットを買うための検索になります。  
Stearch!は、ユーザーの「急に時間が空いてしまった」「近くの地域で何かやっていないか」「舞台について詳しくないけど希望の日程で何かやっていないか」などといった"緊急性優先"で調べることができるアプリになります。
    
## 🌐 機能一覧  
### 検索機能（Ransack)
●１クリックで今日行われている公演の検索機能  
●複数条件検索機能  
　　・ページ下、条件検索フォームへアニメーション遷移  
　　・キーワード検索  
　　・Active Hash  
　　・Radio Button  
　　・開演日から終演日までの期間検索  
　　・並び替え機能  
●リザルトページ  
　　・ページネーション機能(kaminari)  
 <img src="https://user-images.githubusercontent.com/68061154/96409218-e201ff80-121f-11eb-81a8-ba0db4266a4a.gif" width=50%>
### ユーザー登録機能
●ログイン・サインアップ機能(devise)  
　　・メールアドレス登録・ログイン  
　　・omniauth認証SNS登録・ログイン（Facebook,Twitter,Google登録）  
 <img src="https://user-images.githubusercontent.com/68061154/96408953-7c157800-121f-11eb-9a1f-076a15e2ac93.gif" width=50%>
### 公演登録機能
●マイページ機能  
　　・画像投稿(Active Storage,S3)  
　　・公演登録・編集・削除  
　　・登録した公演一覧  
　　・いいねした公演一覧  
●詳細ページ機能  
　　・URLリンク(rinku)  
　　・非同期いいね機能(ログインユーザーのみ利用可能)  
　　・Twitterシェア機能  
　　・Google MAP緯度経度取得表示（Google Maps Javascript API/Geocording API）  
<img src="https://user-images.githubusercontent.com/68061154/96665822-b81c1a80-1390-11eb-914d-2725365829aa.gif" width=50%>

### ヘッダー
●ユーザー登録・ログインボタン→モーダル表示  
●サイドメニュー（アコーディオンメニュー）  
 <img src="https://user-images.githubusercontent.com/68061154/96433078-12599600-1240-11eb-8912-627208a05579.gif" width=50%> 

## 🌐 環境  
### Code
●HTML/CSS/Sass/Git/GitHub/jQuery'3.5.1'/Ruby'2.6.5'/Ruby on Rails'6.0.0'/Docker/Docker-compose/circleCI  
●単体・結合テストコード(Rspec/Capybara)  
### 本番環境  
●AWS（EC2/S3/Routes53/Amazon Linux2/VPC/ACM/ELB）  
●アプリケーションサーバー（Unicorn）  
●Webサーバー（Nginx）  
●データベース（mariaDB）  
●自動デプロイ（Capistrano3）  
●レスポンシブ(PCウィンドウ,スマホ)  
 <img src="https://user-images.githubusercontent.com/70260498/97248821-ecd31a80-1845-11eb-8688-da9ed7dd4dfc.jpeg" width=50%>  

## 🌐 ER
<p align="center">
  <img src="https://user-images.githubusercontent.com/70260498/97265524-23bb2780-186a-11eb-9ab8-34433eade645.png" width=70%>  
</p>

## 🌐 インフラ構成図
<p align="center">
  <img src="https://user-images.githubusercontent.com/70260498/96857332-d457ae80-1499-11eb-90cf-576f08ac8c49.png" width=70%>  
</p>

## 🌐 工夫した点
UI/UXのシンプルさ、使いやすさに拘りました。  
トップページでなんのアプリなのか、どう使ったらいいかがわかるように、また登録に迷うことがないように気をつけて設計しました。これらは積極的に公開してフィードバックを貰い使いにくい点を洗い出して改善しています。目立つ機能よりも、ちょっと可愛いな、人に紹介したいな、と思ってもらい「拡散」されやすいような、心配りのあるアプリケーションを目指しました。

## 🌐 今後のアップデート
・<a href="https://github.com/mitsu0014/stearch/issues">issue</a>に記載しています。

## 🌐 Author
<a href="https://twitter.com/hiromitsu1208">Twitter</a>  
<a href="https://qiita.com/mitsu1208g">Qiita</a>