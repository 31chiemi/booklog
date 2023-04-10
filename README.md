# テーブル設計

## users テーブル

| Column             | Type   | Options                    |
| ------------------ | ------ | ---------------------------|
| email              | string | null: false , unique: true |
| encrypted_password | string | null: false                |
| nickname           | string | null: false                |
| birthday           | date   | null: false                |

### Association

- has_many :books
- has_many :comments

## books テーブル

| Column     | Type       | Options                        |
| -----------| ---------- | ------------------------------ |
| title      | string     | null: false                    |
| content    | text       |                                |
| genle_id   | integer    | null: false                    |
| user       | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments

## comments テーブル

| Column    | Type       | Options                        |
| ----------| ---------- | ------------------------------ |
| content   | text       | null: false                    |
| book      | references | null: false, foreign_key: true |
| user      | references | null: false, foreign_key: true |

### Association

- belongs_to :book
- belongs_to :user