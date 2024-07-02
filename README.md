# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |
| profile            | text   |

### Association

- has_many :qualifications
- has_many :comments

## qualifications テーブル

| Column       | Type       | Options     |
| ------------ | ---------- | ----------- |
| name         | string     | null: false |
| official_url | text       | null: false |

### Association

- belongs_to :user
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