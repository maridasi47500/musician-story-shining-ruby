class CreateScenes < ActiveRecord::Migration[8.1]
  def change
    create_table :scenes do |t|
      t.string :text
      t.references :chapter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
