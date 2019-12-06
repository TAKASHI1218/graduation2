class AddColumnToBlog < ActiveRecord::Migration[5.2]
  def change

    add_column :blogs, :cut_off_date, :date
    add_column :blogs, :status, :integer
    add_column :blogs, :priority, :integer
  end
end
