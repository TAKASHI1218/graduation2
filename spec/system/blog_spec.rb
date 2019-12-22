require 'rails_helper'

RSpec.describe 'blogs機能', type: :system do

  describe '業務連絡一覧画面' do
    context 'blogを作成した場合' do
      it '作成済みのblogが表示されること' do
        User.create!(name: 'test', email: 'aa@gmail.com', password: '61346134', password_confirmation: '61346134', admin: 'true')
        visit user_session_path
        fill_in 'メールアドレス', with: 'aa@gmail.com'
        fill_in 'パスワード', with: '61346134'
        click_button 'Log in'
        visit blogs_path
        expect(page).to have_content '業務連絡一覧'
        click_button '業務連絡を登録する'
        fill_in 'タイトル', with: 'ああああ'
        fill_in '内容', with: 'いいいい'
        select '緊急', from: 'blog_status'
        click_button '登録する'
        expect(page).to have_content 'ああああ'
      end
    end
  end

  describe '業務連絡一覧画面' do
    context 'blogを削除した場合' do
      it '作成済みのblogが削除されること' do
        User.create!(name: 'test', email: 'aa@gmail.com', password: '61346134', password_confirmation: '61346134', admin: 'true')
        visit user_session_path
        fill_in 'メールアドレス', with: 'aa@gmail.com'
        fill_in 'パスワード', with: '61346134'
        click_button 'Log in'
        visit blogs_path
        expect(page).to have_content '業務連絡一覧'
        click_button '業務連絡を登録する'
        fill_in 'タイトル', with: 'ああああ'
        fill_in '内容', with: 'いいいい'
        select '緊急', from: 'blog_status'
        click_button '登録する'
        expect(page).to have_content 'ああああ'
        click_button '削除'
        page.driver.browser.switch_to.alert.accept
        expect(page).not_to have_content 'ああああ'
      end
    end
  end

  describe '業務連絡一覧画面' do
    context 'blogを編集した場合' do
      it '作成済みのblogが編集されること' do
        User.create!(name: 'test', email: 'aa@gmail.com', password: '61346134', password_confirmation: '61346134', admin: 'true')
        visit user_session_path
        fill_in 'メールアドレス', with: 'aa@gmail.com'
        fill_in 'パスワード', with: '61346134'
        click_button 'Log in'
        visit blogs_path
        expect(page).to have_content '業務連絡一覧'
        click_button '業務連絡を登録する'
        fill_in 'タイトル', with: 'ああああ'
        fill_in '内容', with: 'いいいい'
        select '緊急', from: 'blog_status'
        click_button '登録する'
        expect(page).to have_content 'ああああ'
        click_button '編集'
        fill_in 'タイトル', with: 'たたたた'
        click_button '更新する'
        expect(page).to have_content 'たたたた'
        expect(page).not_to have_content 'ああああ'
      end
    end
  end

  describe '業務連絡一覧画面' do
    context 'blogを優先度でソートした場合' do
      it '優先度でソートされること' do
        User.create!(name: 'test', email: 'aa@gmail.com', password: '61346134', password_confirmation: '61346134', admin: 'true')
        visit user_session_path
        fill_in 'メールアドレス', with: 'aa@gmail.com'
        fill_in 'パスワード', with: '61346134'
        click_button 'Log in'
        visit blogs_path
        click_button '業務連絡を登録する'
        fill_in 'タイトル', with: 'ゆゆゆゆ'
        fill_in '内容', with: 'いいいい'
        select '緊急', from: 'blog_status'
        click_button '登録する'
        click_button '業務連絡を登録する'
        fill_in 'タイトル', with: 'ああああ'
        fill_in '内容', with: 'いいいい'
        select 'いつでもよい', from: 'blog_status'
        click_button '登録する'
        click_button '業務連絡を登録する'
        fill_in 'タイトル', with: 'ああああ'
        fill_in '内容', with: 'いいいい'
        select '重要', from: 'blog_status'
        click_button '登録する'
        click_button '業務連絡を登録する'
        fill_in 'タイトル', with: 'ああああ'
        fill_in '内容', with: 'いいいい'
        select 'とても重要', from: 'blog_status'
        click_button '登録する'
        visit blogs_path
        click_button '優先度でソートする'
        blogs = all(".table")
        table_0 = blogs[0]
        expect(table_0).to have_content 'ゆゆゆゆ'
      end
    end
  end

  describe '業務連絡一覧画面' do
    context 'blogを最新順でソートした場合' do
      it '最新順でソートされること' do
        User.create!(name: 'test', email: 'aa@gmail.com', password: '61346134', password_confirmation: '61346134', admin: 'true')
        visit user_session_path
        fill_in 'メールアドレス', with: 'aa@gmail.com'
        fill_in 'パスワード', with: '61346134'
        click_button 'Log in'
        visit blogs_path
        click_button '業務連絡を登録する'
        fill_in 'タイトル', with: 'ゆゆゆゆ4'
        fill_in '内容', with: 'いいいい'
        select '緊急', from: 'blog_status'
        click_button '登録する'
        click_button '業務連絡を登録する'
        fill_in 'タイトル', with: 'ああああ3'
        fill_in '内容', with: 'いいいい'
        select 'いつでもよい', from: 'blog_status'
        click_button '登録する'
        click_button '業務連絡を登録する'
        fill_in 'タイトル', with: 'ああああ2'
        fill_in '内容', with: 'いいいい'
        select '重要', from: 'blog_status'
        click_button '登録する'
        click_button '業務連絡を登録する'
        fill_in 'タイトル', with: 'ああああ1'
        fill_in '内容', with: 'いいいい'
        select 'とても重要', from: 'blog_status'
        click_button '登録する'
        visit blogs_path
        click_button '優先度でソートする'
        blogs = all(".table")
        table_0 = blogs[0]
        expect(table_0).to have_content 'ゆゆゆゆ4'
        click_button '最新順でソートする'
        expect(table_0).to have_content 'ああああ1'
      end
    end
  end

  describe '業務連絡一覧画面' do
    context 'blogを完了予定期日でソートした場合' do
      it '完了予定期日でソートされること' do
        User.create!(name: 'test', email: 'aa@gmail.com', password: '61346134', password_confirmation: '61346134', admin: 'true')
        visit user_session_path
        fill_in 'メールアドレス', with: 'aa@gmail.com'
        fill_in 'パスワード', with: '61346134'
        click_button 'Log in'
        visit blogs_path
        click_button '業務連絡を登録する'
        fill_in 'タイトル', with: '完了予定期日1'
        fill_in '内容', with: 'いいいい'
        select '2020', from: 'blog_visit_date_1i'
        select '1月', from: 'blog_visit_date_2i'
        select '1', from: 'blog_visit_date_3i'
        select '緊急', from: 'blog_status'
        click_button '登録する'

        click_button '業務連絡を登録する'
        fill_in 'タイトル', with: '完了予定期日2'
        fill_in '内容', with: 'いいいい'
        select '2020', from: 'blog_visit_date_1i'
        select '2月', from: 'blog_visit_date_2i'
        select '1', from: 'blog_visit_date_3i'
        select 'いつでもよい', from: 'blog_status'
        click_button '登録する'

        click_button '業務連絡を登録する'
        fill_in 'タイトル', with: '完了予定期日3'
        fill_in '内容', with: 'いいいい'
        select '2020', from: 'blog_visit_date_1i'
        select '3月', from: 'blog_visit_date_2i'
        select '1', from: 'blog_visit_date_3i'
        select '重要', from: 'blog_status'
        click_button '登録する'

        click_button '業務連絡を登録する'
        fill_in 'タイトル', with: '完了予定期日4'
        fill_in '内容', with: 'いいいい'
        select '2020', from: 'blog_visit_date_1i'
        select '4月', from: 'blog_visit_date_2i'
        select '1', from: 'blog_visit_date_3i'
        select 'とても重要', from: 'blog_status'
        click_button '登録する'

        visit blogs_path
        blogs = all(".table")
        table_0 = blogs[0]
        click_button '完了予定期日でソートする'
        expect(table_0).to have_content '完了予定期日1'
      end
    end
  end

end
