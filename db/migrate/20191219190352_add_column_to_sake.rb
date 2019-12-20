class AddColumnToSake < ActiveRecord::Migration[5.2]
  def change
    add_column :sakes, :kind, :integer
  end
end
