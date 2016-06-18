class CreateChirps < ActiveRecord::Migration
  def change
    create_table :chirps do |t|
      t.text :body
      t.string :author

      t.timestamps null: false
    end
  end
end
