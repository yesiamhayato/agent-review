# README

# Smoothly(仮)
アプリのスクショ

## App URL

## テスト用アカウント

# 概要
## このアプリケーションでできることを記述
ほげほげ
## このアプリケーションでできることを記述
ほげほげ
## このアプリケーションでできることを記述
ほげほげ

# 利用方法

# 目指した課題解決

# 実装した機能についてのGIFと説明
## ユーザー管理機能
ほげほげ
## レビュー投稿機能
ほげほげ

# 実装予定の機能
## レビューに対するコメント機能
## レビューに対する「同意」・「反対」機能

# データベース設計
ER図を添付する

# ローカルでの動作方法
git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述。
アプリケーション開発に使用した環境を併記することを忘れないでください（パッケージやRubyのバージョンなど）。




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