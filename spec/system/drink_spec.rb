require 'rails_helper'

RSpec.describe 'drinks機能', type: :system do

  describe 'お飲み物一覧画面' do
    context 'drinkを作成した場合' do
      it '作成済みのdrinkが表示されること' do
        User.create!(name: 'test', email: 'aa@gmail.com', password: '61346134', password_confirmation: '61346134', admin: 'true')
        visit user_session_path
        fill_in 'メールアドレス', with: 'aa@gmail.com'
        fill_in 'パスワード', with: '61346134'
        click_button 'Log in'
        visit drinks_path
        expect(page).to have_content '新しくお飲み物を登録する'
        click_button '新しくお飲み物を登録する'
        fill_in '名前', with: 'ビール'
        fill_in '値段', with: '200'
        select 'ドリンク', from: 'drink_kind'
        click_button '登録する'
        expect(page).to have_content 'ビール'
      end
    end
  end


  describe 'お飲み物一覧画面' do
    context 'drinkを削除した場合' do
      it '作成済みのdrinkが削除されること' do
        User.create!(name: 'test', email: 'aa@gmail.com', password: '61346134', password_confirmation: '61346134', admin: 'true')
        visit user_session_path
        fill_in 'メールアドレス', with: 'aa@gmail.com'
        fill_in 'パスワード', with: '61346134'
        click_button 'Log in'
        visit drinks_path
        expect(page).to have_content '新しくお飲み物を登録する'
        click_button '新しくお飲み物を登録する'
        fill_in '名前', with: 'ビール'
        fill_in '値段', with: '200'
        select 'ドリンク', from: 'drink_kind'
        click_button '登録する'
        expect(page).to have_content 'ビール'
        click_button '削除'
        page.driver.browser.switch_to.alert.accept
        expect(page).not_to have_content 'ビール'
      end
    end
  end


  describe 'お飲み物一覧画面' do
    context 'drinkを編集した場合' do
      it '作成済みのdrinkが編集されること' do
        User.create!(name: 'test', email: 'aa@gmail.com', password: '61346134', password_confirmation: '61346134', admin: 'true')
        visit user_session_path
        fill_in 'メールアドレス', with: 'aa@gmail.com'
        fill_in 'パスワード', with: '61346134'
        click_button 'Log in'
        visit drinks_path
        expect(page).to have_content '新しくお飲み物を登録する'
        click_button '新しくお飲み物を登録する'
        fill_in '名前', with: 'ビール'
        fill_in '値段', with: '200'
        select 'ドリンク', from: 'drink_kind'
        click_button '登録する'
        expect(page).to have_content 'ビール'
        click_button '編集'
        page.driver.browser.switch_to.alert.accept
        fill_in '名前', with: 'サワー'
        click_button '更新する'
        expect(page).to have_content 'サワー'
        expect(page).not_to have_content 'ビール'
      end
    end
  end
end
