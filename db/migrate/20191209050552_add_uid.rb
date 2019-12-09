class AddUid < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :uid,  :string, null: false, defalut: ""
    add_column :users, :provider,  :string, null: false, defalut: ""
    add_index :users, [:uid, :provider], unique: true
  end
end
