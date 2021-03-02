# アプリケーション名

E.Memory

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

## アプリケーション概要

料理画像の投稿・閲覧・コメント

### URL

[本番環境URL](https://e-memory.herokuapp.com/)

### テスト用アカウント

E.mail :test@example
Password :111111
Name :test

### 利用方法

食べた料理を記録して料理に対する関心を高めるアプリ。ユーザー登録を行い、自分が記録として残したい料理の画像をレシピや感想・テーマと一緒に投稿して、他のユーザーの料理画像に興味を持ったらコメントを行いことができます。

### 目指した課題解決

料理を始めたが、続けていくことができない人に向けてトップページに大きく料理画像がすぐに見えるようにして料理に対する興味を持ってもらえるようにして、詳細ページで料理の感想、レシピを見てもらうことで関心を高めて料理を続けていけるようにしたいと考えて作成しました。

## 洗い出した要件

[要件定義](https://docs.google.com/spreadsheets/d/1XH9_c-XLMyd1kc971MVoIsesTPUndMVNI1TX27641Qg/edit#gid=282075926)

## 使用言語

ruby, ruby on rails, javascript

## 実装予定の機能

カレンダー(投稿日がわかるように)


