class AddUniquenessTrue < ActiveRecord::Migration[5.2]
  def up
    change_column :users, :name, :string, null: false, default: "", unique: true
    change_column :users, :email, :string, null: false, default: "", unique: true
  end

  def down
    change_column :users, :name, :string, null: false, default: ""
    change_column :users, :email, :string, null: false, default: ""
  end


end
