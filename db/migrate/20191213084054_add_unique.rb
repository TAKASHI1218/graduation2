class AddUnique < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :name
    remove_column :users, :email

    add_column :users, :name, :string, null: false, defalut: "", unique: true
    add_column :users, :email, :string, null: false, defalut: "", unique: true
  end
end
