# README

# テーブル設計

## users テーブル

| Column               | Type   | Options     |
| -------------------- | ------ | ----------- |
| nickname             | string | null: false |
| email                | string | null: false |
| encrypted_password   | string | null: false |

### Association

- has_many :reviews

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