require 'rails_helper'

RSpec.describe 'Foods機能', type: :system do

  describe '焼き鳥一覧画面' do
    context 'Foodを作成した場合' do
      it '作成済みのFoodが表示されること' do
        User.create!(name: 'test', email: 'aa@gmail.com', password: '61346134', password_confirmation: '61346134', admin: 'true')
        visit user_session_path
        fill_in 'メールアドレス', with: 'aa@gmail.com'
        fill_in 'パスワード', with: '61346134'
        click_button 'Log in'

        visit foods_path
        expect(page).to have_content '新しく焼き鳥を登録する'
        click_button '新しく焼き鳥を登録する'
        fill_in '名前', with: 'ねぎま'
        fill_in '値段', with: '200'
        click_button '登録する'
        expect(page).to have_content 'ねぎま'
      end
    end
  end

  describe '焼き鳥一覧画面' do
    context 'Foodを削除した場合' do
      it '作成済みのFoodが削除されること' do
        User.create!(name: 'test', email: 'aa@gmail.com', password: '61346134', password_confirmation: '61346134', admin: 'true')
        visit user_session_path
        fill_in 'メールアドレス', with: 'aa@gmail.com'
        fill_in 'パスワード', with: '61346134'
        click_button 'Log in'

        visit foods_path
        expect(page).to have_content '新しく焼き鳥を登録する'
        click_button '新しく焼き鳥を登録する'
        fill_in '名前', with: 'ねぎま'
        fill_in '値段', with: '200'
        click_button '登録する'
        expect(page).to have_content 'ねぎま'
        click_button '削除'
        page.driver.browser.switch_to.alert.accept

        expect(page).not_to have_content 'ねぎま'
      end
    end
  end

  describe '焼き鳥一覧画面' do
    context 'Foodを編集した場合' do
      it '作成済みのFoodが編集されること' do
        User.create!(name: 'test', email: 'aa@gmail.com', password: '61346134', password_confirmation: '61346134', admin: 'true')
        visit user_session_path
        fill_in 'メールアドレス', with: 'aa@gmail.com'
        fill_in 'パスワード', with: '61346134'
        click_button 'Log in'

        visit foods_path
        expect(page).to have_content '新しく焼き鳥を登録する'
        click_button '新しく焼き鳥を登録する'
        fill_in '名前', with: 'ねぎま'
        fill_in '値段', with: '200'
        click_button '登録する'
        expect(page).to have_content 'ねぎま'
        click_button '編集'
        page.driver.browser.switch_to.alert.accept
        fill_in '名前', with: 'くし'
        click_button '更新する'
        expect(page).to have_content 'くし'
        expect(page).not_to have_content 'ねぎま'
      end
    end
  end










end


  #
  #
  # #
  # describe 'タスク登録画面' do
  #   context '必要項目を入力して、createボタンを押した場合' do
  #     it 'データが保存されること'
  #   end
  # end
  #
  # describe 'タスク詳細画面' do
  #    context '任意のタスク詳細画面に遷移した場合' do
  #      it '該当タスクの内容が表示されたページに遷移すること'
  #    end
  # end
