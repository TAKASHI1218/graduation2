require 'rails_helper'

RSpec.describe Food, type: :model do


  it "food_model_テスト１ nameは入力されていないエラーとなる" do
    food = Food.new(name: '', picture: '', price: '100')
    expect(food).not_to be_valid
  end


  it "food_model_テスト2 nameは同じものは入力できない" do
    food = Food.create(name: 'テスト', picture: '', price: '100')
    food = Food.create(name: 'テスト', picture: '', price: '100')
    expect(food).not_to be_valid
  end


  it "food_model_テスト3 nameは1文字以上、10文字以下ではないとエラーとなる" do
    food = Food.new(name: '012345678901234567890', picture: '', price: '100')
    expect(food).not_to be_valid
  end


  it "food_model_テスト4 priceは入力されていないエラーとなる" do
    food = Food.new(name: 'テスト', picture: '', price: '')
    expect(food).not_to be_valid
  end

  it "food_model_テスト5 priceは負の数の値を入力できない" do
    food = Food.new(name: 'テスト', picture: '', price: '-1')
    expect(food).not_to be_valid
  end

end
