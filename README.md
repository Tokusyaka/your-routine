# アプリケーション名
Your Routine

# アプリケーション概要
自信が取り組んだトレーニングの日時、内容を記録しカレンダーで管理ができる。

# 制作背景
自宅にいる時間が以前よりも長くなり、運動を始める人が増えてきている。

その中でなかなか続けられないという人が一定数おり、モチベーションが続かない、成果が見て分からないから、などの理由があることが調べてみて分かった。

このことから自身でトレーニング内容を把握し、記録することで今までの努力の結果が見て確認できるようになれば、これらのことが解決できるのではないかと考え、今回のアプリ開発に至った。

# URL
- https://your-routine.herokuapp.com/
## 本番環境
- Basic認証: training
- password: 9291718
- ユーザー名: yamada
- email: yahoo@test.com
- password: 11111a

# DEMO
## TOPページ
![Your Routine TOPページ](https://i.gyazo.com/d37916cc7288f431b839bb43dc639e4e.png)
## トレーニング記録ページ
![トレーニング記録ページ](https://i.gyazo.com/11542c82c1076680c421dc0a29a656a3.png)
## トレーニング詳細ページ
![トレーニング詳細ページ](https://i.gyazo.com/c4164036b0dc922e98c6843dceb466b1.png)

# 工夫したポイント
- 初めてCSSフレームワークを使用して、サイトのレイアウトを作成したこと。
- トレーニングの詳細の内容を確認できるように、テーブルで表示させたこと。
- カレンダー内に予定を表示させ、そのリンクから詳細を確認できるようにしたこと。

# 実装予定の内容
- ツイート機能
- コメント機能
- タイマー機能

# テーブル設計
## ER図
![ER図](.drawio.png)

## users テーブル

| Column             | Type   | Options                   | 
| ------------------ | ------ | ------------------------- | 
| nickname           | string | null: false               | 
| email              | string | null: false, unique: true | 
| encrypted_password | string | null: false               | 


### Association
- has_many :trainings

## trainings テーブル

| Column      | Type       | Options            | 
| ----------- | ---------- | ------------------ | 
| title       | string     | null: false        | 
| content     | string     | null: false        | 
| start_time  | string     | null: false        | 
| user        | references | null: false        | 


### Association
- belongs_to :user


# 開発環境
- フロントエンド: HTML, CSS(Bulma), simple_calendar(2.4)
- バックエンド: Ruby on Rails(6.0.0), Ruby(2.6.5)
- テスト: Rspec
- Linter: Rubocop
- データベース: MySQL(5.6.50), Sequel Pro
- インフラ: Heroku
- タスク管理: GitHub
