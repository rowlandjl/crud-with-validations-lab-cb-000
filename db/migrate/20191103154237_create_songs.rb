class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.str :title

      t.timestamps
    end
  end
end
