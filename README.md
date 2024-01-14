# アプリケーション名
タスクメモアプリ

# アプリケーション概要
タスクを投稿し、共有することができます。  
ユーザー同士でタスクに対して詳細な項目をコメントのような形でメモとして追加できます。

# URL
https://task-memo.onrender.com/

# テスト用アカウント
・Basic認証ID: admin  
・Basic認証パスワード: 2222
## user1
・メールアドレス: 1@1.com  
・パスワード: 111111
## user2
・メールアドレス: 2@2.com  
・パスワード: 222222

# 利用方法
1.トップページ(一覧画面)のヘッダーからユーザーの新規登録を行います。  
2.「投稿する」ボタンからタスクの内容を入力し、投稿します。  
3.投稿後、タスクをクリックすると詳細画面を表示できます。  
4.詳細ページからメモの追加・編集・削除ができます。
5.トップページ(一覧画面)のタスク横のプルダウンメニューから、メモを追加・編集・削除ができます。

# アプリケーションを作成した背景
現職で、現在誰がどの作業を行なっているか、これから何を行うかが共有されていないことがあります。そのため、共有でき、かつ詳細な指示ができるアプリを作成しようと考えました。

# 洗い出した要件
[要件を定義したシートのリンクです](https://docs.google.com/spreadsheets/d/1uQOjEZ6VTFH8WuSglWuwanbcirj4rKhglmTaZP6GCqo/edit?usp=sharing)

# 実装予定の機能
・メモの内容の編集  
・タスクの投稿者の表示  
・投稿日時の表示  
・一覧画面でもメモの内容を確認できる機能  
・完了ボタン  
・完了ボタンクリック後に「完了」の表示  
・完了日時の表示  
現在上記の実装を予定しております。

# データベース設計
## users テーブル

| Column                  | Type   | Options                   |
| ----------------------- | ------ | ------------------------- |
| nickname                | string | null: false               |

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


# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/744a0a6bb45e11548745f2d395a8cafb.png)](https://gyazo.com/744a0a6bb45e11548745f2d395a8cafb)

# 開発環境
Ruby  
Ruby on Rails  
JavaScript  
MySQL  
Github  
render  
Visual Studio Code


# ローカルでの動作方法
% git clone https://github.com/K-Yaman0/task_memo  
% cd task_memo  
% bundle install  
% yarn install

# 工夫したポイント
プルダウンを実装し、可能な限り表示されるボタンを減らし、シンプルな見た目になるようにしました。

# 制作時間
約40時間
