require 'rails_helper'

RSpec.describe 'side_menus機能', type: :system do

  describe '一品料理一覧画面' do
    context 'side_menuを作成した場合' do
      it '作成済みのside_menuが表示されること' do
        User.create!(name: 'test', email: 'aa@gmail.com', password: '61346134', password_confirmation: '61346134', admin: 'true')
        visit user_session_path
        fill_in 'メールアドレス', with: 'aa@gmail.com'
        fill_in 'パスワード', with: '61346134'
        click_button 'Log in'
        visit side_menus_path
        expect(page).to have_content '新しく一品料理を登録する'
        click_button '新しく一品料理を登録する'
        fill_in '名前', with: 'サラダ'
        fill_in '値段', with: '500'
        select '一品料理', from: 'side_menu_kind'
        click_button '登録する'
        expect(page).to have_content 'サラダ'
      end
    end
  end
  #
  #
  #
  describe '一品料理一覧画面' do
    context 'side_menuを削除した場合' do
      it '作成済みのside_menuが削除されること' do
        User.create!(name: 'test', email: 'aa@gmail.com', password: '61346134', password_confirmation: '61346134', admin: 'true')
        visit user_session_path
        fill_in 'メールアドレス', with: 'aa@gmail.com'
        fill_in 'パスワード', with: '61346134'
        click_button 'Log in'
        visit side_menus_path
        expect(page).to have_content '新しく一品料理を登録する'
        click_button '新しく一品料理を登録する'
        fill_in '名前', with: 'サラダ'
        fill_in '値段', with: '500'
        select '一品料理', from: 'side_menu_kind'
        click_button '登録する'
        expect(page).to have_content 'サラダ'
        click_button '削除'
        page.driver.browser.switch_to.alert.accept
        expect(page).not_to have_content 'サラダ'
      end
    end
  end


  describe '一品料理一覧画面' do
    context 'side_menuを編集した場合' do
      it '作成済みのside_menuが編集されること' do
        User.create!(name: 'test', email: 'aa@gmail.com', password: '61346134', password_confirmation: '61346134', admin: 'true')
        visit user_session_path
        fill_in 'メールアドレス', with: 'aa@gmail.com'
        fill_in 'パスワード', with: '61346134'
        click_button 'Log in'
        visit side_menus_path
        expect(page).to have_content '新しく一品料理を登録する'
        click_button '新しく一品料理を登録する'
        fill_in '名前', with: 'サラダ'
        fill_in '値段', with: '500'
        select '一品料理', from: 'side_menu_kind'
        click_button '登録する'
        expect(page).to have_content 'サラダ'
        click_button '編集'
        page.driver.browser.switch_to.alert.accept
        fill_in '名前', with: 'ご飯'
        click_button '更新する'
        expect(page).to have_content 'ご飯'
        expect(page).not_to have_content 'サラダ'
      end
    end
  end
end
