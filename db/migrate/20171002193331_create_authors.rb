class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :firstname
      t.string :lastname
      t.string :bio
      t.string :img
      t.string :website
      t.string :facebook
      t.string :twitter
      t.string :instagram

      t.timestamps
    end
  end
end
