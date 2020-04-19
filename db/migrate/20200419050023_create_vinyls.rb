class CreateVinyls < ActiveRecord::Migration[6.0]
  def change
    create_table :vinyls do |t|
      t.string :name
      t.string :album
      t.string :genre
      t.integer :post_id

      t.timestamps
    end
  end
end
