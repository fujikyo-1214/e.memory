# テーブル設計

## usersテーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| email              | string | null: false unique: true  |
| encrypted_password | string | null: false               |
| name               | string | null: false               |

### Association

has_many :eats
has_many :comments

## eatsテーブル

| Column | Type       | Options     |
| ------ | ---------- | ----------- |
| title  | string     | null: false |
| text   | text       | null: false |
| user   | references | null: false |

### Association

belongs_to :user
has_many :comments

## commentsテーブル

| Column | Type       | Options     |
| ------ | ---------- | ----------- |
| text   | text       | null: false |
| user   | references | null: false |
| eat    | references | null: false |

### Association

belongs_to :user
belongs_to :eat