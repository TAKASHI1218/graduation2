require 'rails_helper'

RSpec.describe User, type: :model do


  it "user_model_テスト１ nameは入力されていないエラーとなる" do
    user = User.new(name: '', email: 't6134@yahoo.co.jp', password:'61346134', password_confirmation: '61346134')
    expect(user).not_to be_valid
  end


  it "user_model_テスト2 nameは同じものは入力できない" do
    user = User.create(name: 'テスト', email: 't6134@yahoo.co.jp', password:'61346134', password_confirmation: '61346134')
    user = User.create(name: 'テスト', email: 't6135@yahoo.co.jp', password:'61346134', password_confirmation: '61346134')
    expect(user).not_to be_valid
  end


  it "user_model_テスト3 nameは10文字までではないとエラーとなる" do
    user = User.new(name: '12345678901', email: 't6134@yahoo.co.jp', password:'61346134', password_confirmation: '61346134')
    expect(user).not_to be_valid
  end

  it "user_model_テスト4 emailは入力されていないエラーとなる" do
    user = User.new(name: 'テスト', email: '', password:'61346134', password_confirmation: '61346134')
    expect(user).not_to be_valid
  end

  it "user_model_テスト5 emailは同じものは入力できない" do
    user = User.create(name: 'テスト1', email: 't6134@yahoo.co.jp', password:'61346134', password_confirmation: '61346134')
    user = User.create(name: 'テスト2', email: 't6134@yahoo.co.jp', password:'61346134', password_confirmation: '61346134')
    expect(user).not_to be_valid
  end

  it "user_model_テスト6 emailは30文字までではないとエラーとなる" do
    user = User.new(name: '12345678901', email: '123456789012345678901234567890@yahoo.co.jp', password:'61346134', password_confirmation: '61346134')
    expect(user).not_to be_valid
  end

  it "user_model_テスト7 emailは適切なものではないとエラーとなる" do
    user = User.new(name: '12345678901', email: '123456789012345678901234567890yahoo.co.jp', password:'61346134', password_confirmation: '61346134')
    expect(user).not_to be_valid
  end






end
