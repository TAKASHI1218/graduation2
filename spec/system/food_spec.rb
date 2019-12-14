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
        click_on '新しく焼き鳥を登録する'
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
