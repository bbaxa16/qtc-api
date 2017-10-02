class Blogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :entry_date, :datetime
  end
end
