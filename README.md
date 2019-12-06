# README
# 飲食店ホームページ（焼き鳥屋）
## 概要
当該焼き鳥店のホームページを作成を一層の集客を目指す

## コンセプト

お店の場所やメニュー、を記載し閲覧者にお店のことを知ってもらう。

従業員用のページを作成しお店間の情報を共有できるようにする。
## バージョン情報
Ruby 2.6.3
Rails 5.2.3
## 機能一覧
- 投稿機能
  - ユーザー登録機能
    - メールアドレス、名前、パスワードは必須
    - ユーザー一覧をみることができる
  - ログイン機能
    - メールアドレス、パスワードでログインできる
  - ブログ投稿機能(従業員用)
    - コンテンツの一覧を表示できる
    - 画像、テキストが投稿できる
    - 本人のみコンテンツの削除、編集ができる
    - adminユーザーのみ全ての投稿を編集可能


- メニュー(food, side_menu, drink, sake)アップデート機能
 - adminユーザーのみメニューを新規登録、アップデートできる。
   - グランドメニューはseedで設定

# カタログ設計
https://docs.google.com/spreadsheets/d/18qd-0vUnFeM5WgNzt2b_GqC_XZb-4lGKGsk33CJS8zM/edit?userstoinvite=gum5588%40gmail.com&ts=5ddb6148&actionButton=1#gid=1973705985
# テーブル定義
## table 1-4
https://docs.google.com/spreadsheets/d/18qd-0vUnFeM5WgNzt2b_GqC_XZb-4lGKGsk33CJS8zM/edit?userstoinvite=gum5588%40gmail.com&ts=5ddb6148&actionButton=1#gid=460178313
## table 5-7
https://docs.google.com/spreadsheets/d/18qd-0vUnFeM5WgNzt2b_GqC_XZb-4lGKGsk33CJS8zM/edit?userstoinvite=gum5588%40gmail.com&ts=5ddb6148&actionButton=1#gid=175635062
# ER図
https://docs.google.com/spreadsheets/d/18qd-0vUnFeM5WgNzt2b_GqC_XZb-4lGKGsk33CJS8zM/edit?userstoinvite=gum5588%40gmail.com&ts=5ddb6148&actionButton=1#gid=71762474
# 画面遷移図
https://docs.google.com/spreadsheets/d/18qd-0vUnFeM5WgNzt2b_GqC_XZb-4lGKGsk33CJS8zM/edit?userstoinvite=gum5588%40gmail.com&ts=5ddb6148&actionButton=1#gid=76011229
# 画面ワイヤーフレーム
https://docs.google.com/spreadsheets/d/18qd-0vUnFeM5WgNzt2b_GqC_XZb-4lGKGsk33CJS8zM/edit?userstoinvite=gum5588%40gmail.com&ts=5ddb6148&actionButton=1#gid=1170703884
# 使用予定Gem
- ログイン機能
 - devise


- 画像編集機能
  - carrierwave
  - mini_magic
  - S3


- CSSフレームワーク
  - bulma-rails


- デバッグ
  - better_errors
  - binding_of_caller
  - pry-rails


- テスト
  - rspec-rails
  - spring-commands-rspec
  - factory_bot_rails
  - capybara
  - selenium-webdriver


- 辞書機能
  - i18n



  # *AWSにてアップロード
- AWS用Gem
  - fog aws
  - dotenv-rails
  - unicorn
  - mini_racer
  - capistrano, 3.6.0
  - capistrano-bundler
  - capistrano-rails
  - capistrano-rbenv
  - capistrano3-unicorn
