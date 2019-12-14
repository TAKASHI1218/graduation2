require 'rails_helper'

RSpec.describe Drink, type: :model do


  it "drink_model_テスト１ nameは入力されていないエラーとなる" do
    drink = Drink.new(name: '', price: '100')
    expect(drink).not_to be_valid
  end


  it "drink_model_テスト2 nameは同じものは入力できない" do
    drink = Drink.create(name: 'テスト2', price: '100')
    drink = Drink.create(name: 'テスト2', price: '100')
    expect(drink).not_to be_valid
  end


  it "drink_model_テスト3 nameは1文字以上、10文字以下ではないとエラーとなる" do
    drink = Drink.new(name: '012345678901234567890', price: '100')
    expect(drink).not_to be_valid
  end


  it "drink_model_テスト4 priceは入力されていないエラーとなる" do
    drink = Drink.new(name: 'テスト4', price: '')
    expect(drink).not_to be_valid
  end

  it "drink_model_テスト5 priceは負の数の値を入力できない" do
    drink = Drink.new(name: 'テスト5', price: '-1')
    expect(drink).not_to be_valid
  end

end
