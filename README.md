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
舞台は、公演情報を調べて→チケットを手配して→チケットを持って遠くに移動して→ようやく見ることができます。そのストーリーは観劇ならではのオリジナリティであると同時に、不便さによってファンが離れていく原因でもあります。  
舞台も、映画のように「スキマ時間に観劇」することは可能で、このアプリは舞台市場を発展させる一旦になると考えます。
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
　　・画像投稿(Active Storage)  
　　・公演登録・編集・削除  
　　・登録した公演一覧  
　　・いいねした公演一覧  
●詳細ページ機能  
　　・URLリンク(rinku)  
　　・非同期いいね機能(ログインユーザーのみ利用可能)  
　　・Twitterシェア機能  
<img src="https://user-images.githubusercontent.com/68061154/96432135-6ca62700-123f-11eb-8e1a-e50ed8a3e1de.gif" width=50%>

### ヘッダー
●ユーザー登録・ログインボタン→モーダル表示  
●サイドメニュー（アコーディオンメニュー） 
 <img src="https://user-images.githubusercontent.com/68061154/96433078-12599600-1240-11eb-8912-627208a05579.gif" width=50%> 

## 🌐 環境  
### Code
●HTML/CSS/Sass/Javascript/jQuery3.5.1'/Ruby'2.6.5'/Ruby on Rails'6.0.0'  
●単体・結合テストコード(Rspec/Capybara)  
### 本番環境  
●AWS（EC2/S3/Routes53/Amazon Linux2/Cloud Front/ACM）  
●アプリケーションサーバー（Unicorn）  
●Webサーバー（Nginx）  
●データベース（mariaDB）  
●自動デプロイ（Capistrano）  
## 🌐 ER
<p align="center">
  <img src="https://user-images.githubusercontent.com/68061154/95981708-08a7eb00-0e5a-11eb-8da0-6c3c19fb2d48.png" width=70%>  
</p>

## 🌐 インフラ構成図
<p align="center">
  <img src="https://user-images.githubusercontent.com/68061154/96408742-145f2d00-121f-11eb-93e1-03f56f261649.png" width=70%>  
</p>

## 🌐 工夫した点
UI/UXのシンプルさ、使いやすさに拘りました。  
トップページでなんのアプリなのか、どう使ったらいいかがわかるように。また登録に迷うことがないように気をつけて設計しました。これらは積極的に公開してフィードバックを貰い使いにくい点を洗い出して改善しています。すごく目立つ機能よりも、ちょっと可愛いな、人に紹介したいな、と思ってもらい拡散されやすいような、心配りのあるアプリケーションを目指しました。

## 🌐 今後のアップデート
・<a href="https://github.com/mitsu0014/stearch/issues">issue</a>に記載しています。

## 🌐 Author
・<a href="https://twitter.com/hiromitsu1208">Twitter</a>
