# README
# 飲食店ホームページ（焼き鳥屋）
## 概要
当該焼き鳥店のホームページを作成を一層の集客を目指す。

Railsで作成されたホームページにより管理者であればだれでも簡単にメニューの変更や登録をできるようにする

。

## コンセプト

お店の場所やメニューを記載し閲覧者にお店のことを知ってもらう。

鳥勇は焼き鳥の専門店でありながら店主がその時の季節に合わせ厳選した日本酒を数多く取り揃えお客様に提供しています。

このホームページを通してお客様に店主のこだわりの日本酒を知ってもらうことが実現できる。

仕入れが流動的であるので日本酒自体のメニューはお店には置いていないのでこのホームページを通しその情報を提供できるようにする。

お客様のレビューページを作成し人気のメニューやお店のよいところをお客様に知ってもらう。

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
  - ブログ投稿機能
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
