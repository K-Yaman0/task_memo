## users テーブル

| Column                  | Type   | Options                   |
| ----------------------- | ------ | ------------------------- |
| nickname                | string | null: false               |
| email                   | string | null: false, unique: true |
| encrypted_password      | string | null: false               |

### Association

- has_many :tasks
- has_many :memos

## tasks テーブル

| Column                  | Type   | Options                   |
| ----------------------- | ------ | ------------------------- |
| content                 | string | null: false               |

### Association

- belongs_to :user
- has_many :memos

## memos テーブル

| Column                  | Type   | Options                   |
| ----------------------- | ------ | ------------------------- |
| memo                    | string | null: false               |

### Association

- belongs_to :user
- belongs_to :task