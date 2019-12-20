require 'rails_helper'

RSpec.describe SideMenu, type: :model do


  it "side_menu_model_テスト１ nameは入力されていないエラーとなる" do
    side_menu = SideMenu.new(name: '', picture: '', price: '100')
    expect(side_menu).not_to be_valid
  end


  it "side_menu_model_テスト2 nameは同じものは入力できない" do
    side_menu = SideMenu.create(name: 'テスト', picture: '', price: '100')
    side_menu = SideMenu.create(name: 'テスト', picture: '', price: '100')
    expect(side_menu).not_to be_valid
  end


  it "side_menu_model_テスト3 nameは1文字以上、20文字以下ではないとエラーとなる" do
    side_menu = SideMenu.new(name: '12345678901234567890123', picture: '', price: '100')
    expect(side_menu).not_to be_valid
  end

  it "side_menu_model_テスト4 priceは入力されていないエラーとなる" do
    side_menu = SideMenu.new(name: 'テスト', picture: '', price: '')
    expect(side_menu).not_to be_valid
  end

  it "side_menu_model_テスト5 priceは負の数の値を入力できない" do
    side_menu = SideMenu.new(name: 'テスト', picture: '', price: '-1')
    expect(side_menu).not_to be_valid
  end

end
