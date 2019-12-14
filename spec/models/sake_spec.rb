require 'rails_helper'

RSpec.describe Sake, type: :model do


  it "sake_model_テスト１ nameは入力されていないエラーとなる" do
    sake = Sake.new(name: '', picture: '', price: '100', comment: ' ')
    expect(sake).not_to be_valid
  end


  it "sake_model_テスト2 nameは同じものは入力できない" do
    sake = Sake.create(name: 'テスト2', picture: '', price: '100', comment: ' ')
    sake = Sake.create(name: 'テスト2', picture: '', price: '100', comment: ' ')
    expect(sake).not_to be_valid
  end


  it "sake_model_テスト3 nameは1文字以上、10文字以下ではないとエラーとなる" do
    sake = Sake.new(name: '012345678901234567890', picture: '', price: '100', comment: ' ')
    expect(sake).not_to be_valid
  end

  it "sake_model_テスト4 commentは1文字以上、20文字以下ではないとエラーとなる" do
    sake = Sake.new(name: 'テスト4', picture: '', price: '100', comment: '012345678901234567890')
    expect(sake).not_to be_valid
  end

  it "sake_model_テスト5 priceは入力されていないエラーとなる" do
    sake = Sake.new(name: 'テスト5', picture: '', price: '', comment: ' ')
    expect(sake).not_to be_valid
  end

  it "sake_model_テスト6 priceは負の数の値を入力できない" do
    sake = Sake.new(name: 'テスト6', picture: '', price: '-1', comment: ' ')
    expect(sake).not_to be_valid
  end

end
