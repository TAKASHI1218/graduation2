require 'rails_helper'

RSpec.describe 'comments機能', type: :system do

  describe '業務連絡一覧画面' do
    context 'commentを作成した場合' do
      it '作成済みのcommentが表示されること' do
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
        click_button '詳細'
        fill_in '内容', with: 'ttttttt'
        click_button '登録する'
        expect(page).to have_content 'ttttttt'


      end
    end
  end

  describe '業務連絡一覧画面' do
    context 'commentを作成した場合' do
      it '作成済みのcommentが削除されること' do
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
        click_button '詳細'
        fill_in '内容', with: 'ttttttt'
        click_button '登録する'
        expect(page).to have_content 'ttttttt'
        click_button 'コメントを削除する'
        expect(page).not_to have_content 'ttttttt'
      end
    end
  end







end
