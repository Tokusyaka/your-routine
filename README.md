# テーブル設計

## users テーブル

| Column             | Type   | Options                   | 
| ------------------ | ------ | ------------------------- | 
| nickname           | string | null: false               | 
| email              | string | null: false, unique: true | 
| encrypted_password | string | null: false               | 

### Association
- has_many :records
- has_many :calender

## records テーブル

| Column   | Type       | Options | 
| -------- | ---------- | ------- | 
| menu     | string     |         | 
| thoughts | string     |         | 
| user     | references |         | 


### Association
- belongs_to :user
- belongs_to :user

## calender テーブル

| Column  | Type       | Options                        | 
| ------- | ---------- | ------------------------------ | 
| records | references | null: false, foreign_key: true | 
| user    | references | null: false, foreign_key: true | 

### Association
- belongs_to :user
- has_many :records