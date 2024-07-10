# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |
| profile            | text   |

### Association

- has_many :comments

## qualifications テーブル

| Column        | Type      | Options     |
| ------------- | --------- | ----------- |
| name          | string    | null: false |
| official_url  | text      | null: false |
| exam_info_url | text      | null: false |
| exam_fee      | string    | null: false |
| study_hours   | integer   | null: false |
| source_url    | string    | null: false |
| description   | text      | null: false |

### Association

- has_many :comments

## comments テーブル

| Column        | Type       | Options     |
| ------------- | ---------- | ----------- |
| content       | text       | null: false |
| qualification | references | null: false, foreign_key: true |
| user          | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :qualification

## アプリケーション名
SkillPath(スキルパス)

## アプリケーション概要
SkillPathは、IT資格取得を目指す人々をサポートするための学習計画支援アプリケーションです。以下のことができます。

- 資格情報の一覧表示
- 資格情報の詳細ページでのコメント追加、編集、削除
- 開始日、試験日、休日数、平日・土曜・日曜・休日の学習時間を入力し、自動的に学習計画を計算
- 各資格の公式URLや申込URLの表示
- 資格ごとの学習目安時間の管理

このアプリケーションを使用することで、ユーザーは効率的に学習計画を立て、進捗を管理することができます。

## URL
https://skillpath-am1o.onrender.com

## Basic認証

- **ID**: admin
- **パスワード**: 2222

## テスト用アカウント

- **ニックネーム**: TestUser
- **メールアドレス**: test@example.com
- **パスワード**: password

## 利用方法
1. コメント機能やプロフィール機能を利用する場合はアカウントを作成し、ログインします。
2. 資格の詳細ページでコメントを投稿できます。
3. 学習計画を立てるために、開始日、試験日、各項目の学習時間を入力します。
4. 自動計算機能を使用して学習計画を計算します。
5. 最後に学習目安時間と計算した学習時間を比較した結果を表示します。

## アプリケーションを作成した背景
このアプリケーションを通じて、資格取得を目指す人々が効率的に学習計画を立てることができます。具体的にどれぐらいの期間、どれぐらいの勉強時間が必要なのかを数値化して目に見える形にすることで、目標達成に向けてのモチベーションを高めることができます。

## 実装した機能についての画像やGIFおよびその説明
- 学習計画機能：開始日、試験日、各項目の学習時間を入力し、自動で学習時間を計算します。最後に学習目安時間と比較した結果を表示します。
[![学習計画機能](https://i.gyazo.com/7a467cfdd0974ed998ed604942383f38.gif)](https://gyazo.com/7a467cfdd0974ed998ed604942383f38)
- コメント機能：資格の詳細ページでコメントを投稿、編集、削除できます。
[![コメント機能](https://i.gyazo.com/1a8ba747f592de55588536b054a8b7a5.gif)](https://gyazo.com/1a8ba747f592de55588536b054a8b7a5)

## 実装予定の機能
- SNSログイン機能の追加
- 資格情報の検索・フィルター機能

## データベース設計
[![ER図](https://i.gyazo.com/0503f1f2b386ffc1a1b0d85c0562eb8d.png)](https://gyazo.com/0503f1f2b386ffc1a1b0d85c0562eb8d)

## 画面遷移図
[![画面遷移図](https://i.gyazo.com/0e4cb69e8b12f036839aea2d48e55d61.png)](https://gyazo.com/0e4cb69e8b12f036839aea2d48e55d61)

## 開発環境
- 言語: Ruby, JavaScript
- フレームワーク: Ruby on Rails
- データベース: PostgreSQL
- フロントエンド: HTML, CSS, JavaScript
- バージョン管理: GitHub
- デプロイ: Render

## ローカルでの動作方法
```sh
git clone https://github.com/ino-aki/skillpath.git
cd skillpath
bundle install
rails db:create db:migrate
rails s
```

## 工夫したポイント
- ユーザー管理機能の実装にDeviseを使用し、エラーメッセージをCSSでスタイリングしました。
- 学習計画自動計算機能は、Rubyを使って計算ロジックを実装しました。
- 資格詳細ページのタブ機能にはJavaScriptを用いて、画面の見た目と操作性を向上させ、ユーザーが直感的に必要な情報にアクセスしやすくしました。
## 改善点
- レスポンシブデザインの強化：現在のデザインは主にデスクトップ向けであるため、タブレットやスマートフォンでも見やすいデザインにする予定です。

## 制作時間
アプリケーションを制作するのにかけた時間は約100時間です。
