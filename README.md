# README

# Smoothly(仮)
アプリのスクショ
<img width="1440" alt="スクリーンショット 2021-01-07 16 01 58" src="https://user-images.githubusercontent.com/73696004/103862901-4045cc80-5103-11eb-8d07-f72930d25704.png">


## App URL
https://agent-review.herokuapp.com/

## テスト用アカウント
email: tester@test.com  
password: 12345abc

# 概要
### 不動産営業マンのレビューを書くこと
ユーザーはユーザー新規登録をした後に、不動産営業マンのレビューを書くことができる。
### レビューを書きたい営業マンがいない場合、新規不動産営業マンを登録すること
ユーザーはレビューを書きたい営業マンが存在しなかった場合、新しく営業マンを作ることができる。
### 既存のレビューを閲覧できること
他のユーザーが投稿したレビューを閲覧することができる。

# 利用方法

# 目指した課題解決
不動産業界をよりクリアに風通しを良くしたかった。  
人間に最も重要な衣・食・住。不動産は実生活に密接な関係を持ちながらも、「ボッタクリ」や「騙し(詐欺)」が後を断たない。  
一方で素晴らしい営業マンもいる中、消費者は容易にそれを判断することができない。  
良い営業マンも悪い営業マンも明るみに出て、口コミ(レビュー)で消費者をサポートしたいと思った。

# 実装した機能についてのGIFと説明
### ユーザー管理機能
nickname、メールアドレス、パスワードを入力することによってユーザー新規登録をすることができる。
[![Image from Gyazo](https://i.gyazo.com/991f702434e390a6e90cb3b1a0494942.gif)](https://gyazo.com/991f702434e390a6e90cb3b1a0494942)

### レビュー投稿/編集/削除機能
特定の営業マンに対してレビューを書くことができる。自分の書いたレビューに限り、編集と削除をすることができる。
[![Image from Gyazo](https://i.gyazo.com/ea1bf6d745949e4a9de3cd67f82c2e1d.gif)](https://gyazo.com/ea1bf6d745949e4a9de3cd67f82c2e1d)  
↓星の数をクリックすることで評価をすることができる。  
[![Image from Gyazo](https://i.gyazo.com/82c8c80888dd911f1218ce0de176f597.gif)](https://gyazo.com/82c8c80888dd911f1218ce0de176f597)

### 営業マン検索機能
営業マンの名前・会社名・場所を元に検索することができる。  

### 新規営業マン登録機能
レビューを書きたい営業マンがまだ存在しない場合は、新しく営業マンを作成することができる。
  


# 実装予定の機能
## レビューに対する「同意」・「反対」機能

# データベース設計
ER図を添付する

# ローカルでの動作方法
git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述。
アプリケーション開発に使用した環境を併記する（パッケージやRubyのバージョンなど）。




# テーブル設計

## users テーブル

| Column               | Type   | Options     |
| -------------------- | ------ | ----------- |
| nickname             | string | null: false |
| email                | string | null: false |
| encrypted_password   | string | null: false |

### Association

- has_many :reviews
- has_many :agents

## reviews テーブル

| Column            | Type            | Options                        |
| ----------------- | --------------- | ------------------------------ |
| score             | integer         | null: false                    |
| deal_type_id      | integer         | null: false                    |
| close_deal_id     | integer         | null: false                    |
| content           | text            | null: false                    |
| user              | references      | null: false, foreign_key: true |
| agent             | references      | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :agent

## agents テーブル

| Column               | Type   | Options     |
| -------------------- | ------ | ----------- |
| last_name            | string | null: false |
| first_name           | string | null: false |
| last_name_kana       | string | null: false |
| first_name_kana      | string | null: false |
| company_name         | string | null: false |
| company_location     | string | null: false |

### Association

- has_many :reviews
- belongs_ to :user
