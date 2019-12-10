class RemovePriorityColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :blogs, :priority, :integer

  end
end
