class AddNullTrue < ActiveRecord::Migration[5.2]
  def change
    change_column_null :blogs, :cut_off_date, true
    change_column_null :blogs, :status, true
    change_column_null :blogs, :priority, true
  end

  end
