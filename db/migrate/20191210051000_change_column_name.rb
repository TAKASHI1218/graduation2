class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :blogs, :cut_off_date, :visit_date
  end
end
