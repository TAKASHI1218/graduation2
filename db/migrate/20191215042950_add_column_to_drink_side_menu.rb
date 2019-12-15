class AddColumnToDrinkSideMenu < ActiveRecord::Migration[5.2]
  def change
    add_column :drinks, :kind, :integer
    add_column :side_menus, :kind, :integer
  end
end
