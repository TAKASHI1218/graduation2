class RemoveCommentColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :foods, :comment
    remove_column :side_menus, :comment
    remove_column :sakes, :comment
  end
end
