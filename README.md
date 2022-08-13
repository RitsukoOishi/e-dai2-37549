
# アプリケーション名
会計ソフト「永代」

# アプリケーション概要
会計簿の記載、集計ができる

# URL
https://e-dai2-37549.herokuapp.com/

# Basic認証
- Basic認証ID:admin
- Basic認証パスワード:2222

# 利用方法
- トップページ→新規収支にて、新規収支の登録ができる。
- プルダウンから収支の種別を選択。
- 項目、摘要もプルダウンから選択。
- 保存するボタンをクリックすると、トップページに戻る。
- 同じ収支・項目・摘要があれば自動集計し、金額を合算する。

# アプリケーションを作成した背景
趣味の同好会の会計を集計するのに、以前は電卓を活用し、
手書きにて会計法報告をしていた。
集計の手間を減らしたいと考え、作成。

# 実装予定の機能
- ユーザー認証機能
- データの削除・編集機能
- 表示された金額を3桁のカンマ区切りを入れる

# 開発環境
ruby on rails ver6.0.0、HTML

# 工夫したポイント
項目、摘要をプルダウンで選択できることにより、ユーザーの記述ミスなどを軽減し、集計をしやすくした点


# テーブル設計
## edaisテーブル
| Column           | Type    | Options    |
| ---------------- | ------- | ---------- |
| balance_id       | integer | null: false|
| entry_day        | date    | null: false|
| genre_id         | integer | null: false|
| my_description_id| integer | null: false|
| note             | string  |            |
| price            | integer | null: false|