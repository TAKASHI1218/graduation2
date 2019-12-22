require 'rails_helper'

RSpec.describe 'sakes機能', type: :system do

  describe '日本酒一覧画面' do
    context 'sakeを作成した場合' do
      it '作成済みのsakeが表示されること' do
        User.create!(name: 'test', email: 'aa@gmail.com', password: '61346134', password_confirmation: '61346134', admin: 'true')
        visit user_session_path
        fill_in 'メールアドレス', with: 'aa@gmail.com'
        fill_in 'パスワード', with: '61346134'
        click_button 'Log in'
        visit sakes_path
        expect(page).to have_content '新しく日本酒を登録する'
        click_button '新しく日本酒を登録する'
        fill_in '名前', with: '松竹梅'
        select '一列目', from: 'sake_kind'
        click_button '登録する'
        expect(page).to have_content '松竹梅'
      end
    end
  end



  describe '日本酒一覧画面' do
    context 'sakeを削除した場合' do
      it '作成済みのsakeが削除されること' do
        User.create!(name: 'test', email: 'aa@gmail.com', password: '61346134', password_confirmation: '61346134', admin: 'true')
        visit user_session_path
        fill_in 'メールアドレス', with: 'aa@gmail.com'
        fill_in 'パスワード', with: '61346134'
        click_button 'Log in'
        visit sakes_path
        expect(page).to have_content '新しく日本酒を登録する'
        click_button '新しく日本酒を登録する'
        fill_in '名前', with: '松竹梅'
        select '一列目', from: 'sake_kind'
        click_button '登録する'
        expect(page).to have_content '松竹梅'
        click_button '削除'
        page.driver.browser.switch_to.alert.accept
        expect(page).not_to have_content '松竹梅'
      end
    end
  end


  describe '日本酒一覧画面' do
    context 'sakeを編集した場合' do
      it '作成済みのsakeが編集されること' do
        User.create!(name: 'test', email: 'aa@gmail.com', password: '61346134', password_confirmation: '61346134', admin: 'true')
        visit user_session_path
        fill_in 'メールアドレス', with: 'aa@gmail.com'
        fill_in 'パスワード', with: '61346134'
        click_button 'Log in'
        visit sakes_path
        expect(page).to have_content '新しく日本酒を登録する'
        click_button '新しく日本酒を登録する'
        fill_in '名前', with: '松竹梅'
        select '一列目', from: 'sake_kind'
        click_button '登録する'
        expect(page).to have_content '松竹梅'
        click_button '編集'
        page.driver.browser.switch_to.alert.accept
        fill_in '名前', with: '獺祭'
        click_button '更新する'
        expect(page).to have_content '獺祭'
        expect(page).not_to have_content '松竹梅'
      end
    end
  end
end
