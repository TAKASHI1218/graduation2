require 'rails_helper'

RSpec.describe Sake, type: :model do


  it "sake_model_テスト１ nameは入力されていないエラーとなる" do
    sake = Sake.new(name: '', picture: '', price: '100')
    expect(sake).not_to be_valid
  end


  it "sake_model_テスト2 nameは同じものは入力できない" do
    sake = Sake.create(name: 'テスト', picture: '', price: '100')
    sake = Sake.create(name: 'テスト', picture: '', price: '100')
    expect(sake).not_to be_valid
  end


  it "sake_model_テスト3 nameは1文字以上、25文字以下ではないとエラーとなる" do
    sake = Sake.new(name: '123456789012345678901234567890', picture: '', price: '100')
    expect(sake).not_to be_valid
  end


  it "sake_model_テスト4 priceは入力されていなくてもエラーにならない" do
    sake = Sake.new(name: 'テスト', picture: '', price: '')
    expect(sake).to be_valid
  end

  it "sake_model_テスト5 priceは負の数の値を入力できない" do
    sake = Sake.new(name: 'テスト', picture: '', price: '-1')
    expect(sake).not_to be_valid
  end

end
