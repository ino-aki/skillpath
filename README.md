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
SkillPath

## アプリケーション概要
SkillPathは、IT資格取得を目指す人々をサポートするための学習計画支援アプリケーションです。以下のことができます:

- 資格情報の一覧表示
- 資格情報の詳細ページでのコメント追加、編集、削除
- 開始日、試験日、休日数、平日・土曜・日曜・休日の学習時間を入力し、自動的に学習計画を計算
- 各資格の公式URLや申込URLの表示
- 資格ごとの学習目安時間の管理

このアプリケーションを使用することで、ユーザーは効率的に学習計画を立て、進捗を管理することができます。


## URL
https://skillpath-am1o.onrender.com

## テスト用アカウント
  nickname: 'TestUser',
  email: 'test@example.com',
  password: 'password',

  basic認証
  ID:admin
  pass 2222

## 利用方法
1. コメント機能やプロフィール機能を利用する場合はアカウントを作成し、ログインします。
3. 資格の詳細ページでコメントを追加できます。
4. 学習計画を立てるために、開始日、試験日、休日数、平日・土曜・日曜・休日の学習時間を入力します。
5. 自動計算機能を使用して学習計画を確認します。

## アプリケーションを作成した背景
このアプリケーションを通じて、資格取得を目指す人々が効率的に学習計画を立て、進捗を管理することができるようにします。特に、忙しい社会人が効率的に勉強時間を確保し、目標達成に向けてのモチベーションを維持することを支援します。

## 実装した機能についての画像やGIFおよびその説明
- 学習計画機能：開始日、試験日、休日数、平日・土曜・日曜・休日の学習時間を入力し、自動で学習計画を生成します。
  ![学習計画機能](https://gyazo.com/example.gif)
- コメント機能：資格の詳細ページでコメントを追加、編集、削除できます。
  ![コメント機能](https://gyazo.com/example.gif)

## 実装予定の機能
- SNSログイン機能の追加
- 資格情報の検索・フィルター機能

## データベース設計
ER図を添付。

## 画面遷移図
画面遷移図を添付。

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
- ユーザー管理機能の実装にDeviseを使用し、カスタムエラーメッセージをCSSでスタイリングしました。
- 学習計画自動計算機能は、Rubyを使って計算ロジックを実装しました。
- コメント機能にはJavaScriptを用いてユーザーエクスペリエンスを向上させました。

## 改善点
- レスポンシブデザインの強化：現在のデザインは主にデスクトップ向けであるため、タブレットやスマートフォンでも見やすいデザインにする予定です。
- パフォーマンスの最適化：データベースクエリの最適化やキャッシュ機能の導入を検討しています。

## 制作時間
アプリケーションを制作するのにかけた時間は約200時間です。
