class AllowNull < ActiveRecord::Migration[5.2]
  def up
   change_column :blogs, :cut_off_date,:date, null: true # null: trueを明示する必要がある
 end

 def down
   change_column :blogs, :cut_off_date,:date, null: false
 end
end
