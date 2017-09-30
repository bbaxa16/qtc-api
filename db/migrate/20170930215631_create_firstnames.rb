class CreateFirstnames < ActiveRecord::Migration[5.1]
  def change
    create_table :firstnames do |t|
      t.string :lastname
      t.string :bio
      t.string :img
      t.string :website
      t.string :instagram
      t.string :twitter
      t.string :facebook

      t.timestamps
    end
  end
end
