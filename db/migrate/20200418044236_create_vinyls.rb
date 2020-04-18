class CreateVinyls < ActiveRecord::Migration[6.0]
  def change
    create_table :vinyls do |t|
      t.string :name
      t.string :artist
      t.string :genre

      t.timestamps
    end
  end
end
