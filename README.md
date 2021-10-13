# アプリケーション名
Your Routine

# アプリケーション概要
自信が取り組んだトレーニングの日時、内容を記録しカレンダーで管理ができる。

# 制作背景
自宅にいる時間が以前よりも長くなり、運動を始める人が増えてきている。
その中でなかなか続けられないという人が一定数おり、モチベーションが続かない、成果が見て分からないから、などの理由があることが調べてみて分かった。
このことから自身でトレーニング内容を把握し、記録することで今までの努力の結果が見て確認できるようになれば、これらのことが解決できるのではないかと考え、今回のアプリ開発に至った。

# DEMO
## TOPページ
![Your Routine TOPページ](https://gyazo.com/2827404a21931ecb36d1d215a9d90bd3)
## トレーニング記録ページ
![トレーニング記録ページ](https://gyazo.com/2679ebca1939cec991badb8d1c4e7c13)

# 実装予定の内容
- ツイート機能
- コメント機能
- タイマー機能

# テーブル設計

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