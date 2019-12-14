require 'rails_helper'

RSpec.describe SideMenu, type: :model do


  it "side_menu_model_テスト１ nameは入力されていないエラーとなる" do
    side_menu = SideMenu.new(name: '', picture: '', price: '100', comment: ' ')
    expect(side_menu).not_to be_valid
  end


  it "side_menu_model_テスト2 nameは同じものは入力できない" do
    side_menu = SideMenu.create(name: 'テスト2', picture: '', price: '100', comment: ' ')
    side_menu = SideMenu.create(name: 'テスト2', picture: '', price: '100', comment: ' ')
    expect(side_menu).not_to be_valid
  end


  it "side_menu_model_テスト3 nameは1文字以上、10文字以下ではないとエラーとなる" do
    side_menu = SideMenu.new(name: '012345678901234567890', picture: '', price: '100', comment: ' ')
    expect(side_menu).not_to be_valid
  end

  it "side_menu_model_テスト4 commentは1文字以上、20文字以下ではないとエラーとなる" do
    side_menu = SideMenu.new(name: 'テスト4', picture: '', price: '100', comment: '012345678901234567890')
    expect(side_menu).not_to be_valid
  end

  it "side_menu_model_テスト5 priceは入力されていないエラーとなる" do
    side_menu = SideMenu.new(name: 'テスト5', picture: '', price: '', comment: ' ')
    expect(side_menu).not_to be_valid
  end

  it "side_menu_model_テスト6 priceは負の数の値を入力できない" do
    side_menu = SideMenu.new(name: 'テスト6', picture: '', price: '-1', comment: ' ')
    expect(side_menu).not_to be_valid
  end

end
