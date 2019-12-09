class AddDeafultSetting < ActiveRecord::Migration[5.2]
  def up
    change_column :users, :uid, :string, null: false, default: ""
    change_column :users, :provider, :string, null: false, default: ""
  end

  def down
    change_column :users, :uid, :string, null: false, default: nil
    change_column :users, :provider, :string, null: false, default: nil
  end


end
