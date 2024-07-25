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

- 資格情報の一覧表示、検索機能
- 資格情報の詳細ページにて受験者の声・体験談をコメントで投稿、編集、削除
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
このアプリケーションを通じて、資格取得を目指す人々が効率的に学習計画を立てることができます。具体的にどれぐらいの期間、どれぐらいの勉強時間が必要なのかを数値化して目に見える形にすることで、目標達成に向けた具体的なイメージを持ちやすくなります。

## 実装した機能についての画像やGIFおよびその説明
- 学習計画機能：開始日、試験日、各項目の学習時間を入力し、自動で学習時間を計算します。最後に学習目安時間と比較した結果を表示します。
[![学習計画機能](https://i.gyazo.com/ad7e6117f4e0d2189d7bfb6c1ea0c5c8.gif)](https://gyazo.com/ad7e6117f4e0d2189d7bfb6c1ea0c5c8)

## その他、実装済みの機能
- タブ機能
- Googleを利用したSNSログイン機能
- リアルタイム検索機能
- Bootstrapのレスポンシブデザイン機能
- パンくずリスト機能

## 実装予定の機能
- おすすめ機能
- ランキング機能
- 資格情報のタグ検索・ソート機能

## データベース設計
[![ER図](https://i.gyazo.com/71575be242c27d7d5f7ffe633267c5f6.png)](https://gyazo.com/71575be242c27d7d5f7ffe633267c5f6)

## 画面遷移図
[![画面遷移図](https://i.gyazo.com/0e4cb69e8b12f036839aea2d48e55d61.png)](https://gyazo.com/0e4cb69e8b12f036839aea2d48e55d61)

## 開発環境
- 言語: Ruby, JavaScript
- フレームワーク: Ruby on Rails
- データベース: PostgreSQL
- フロントエンド: HTML, CSS, JavaScript, Bootstrap, jQuery
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
- 学習計画自動計算機能は、Rubyを使って計算ロジックを実装しました。
- 資格詳細ページのタブ機能にはBootstrapを用いて、画面の見た目と操作性を向上させ、ユーザーが直感的に必要な情報にアクセスしやすくしました。
- Bootstrapのレスポンシブデザイン機能を活用し、タブレットやスマートフォンでも見やすいデザインにしました。
- 検索機能をgem 'ransack'を使って実装し、ユーザーが必要な資格情報を簡単に見つけられるようにしました。
- パンくずリストをgem 'gretel'で実装し、ユーザーがサイト内の現在位置を把握しやすくしました。
- Googleを利用したSNSログイン機能を実装しました。
## 改善点
- UI/UXの改善
- 検索機能拡張
- 資格情報の追加
## 制作時間
アプリケーションを制作するのにかけた時間は約2週間です。
