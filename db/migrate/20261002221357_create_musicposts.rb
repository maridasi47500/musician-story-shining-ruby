class CreateMusicposts < ActiveRecord::Migration[8.1]
  def change
    create_table :musicposts do |t|
      t.references :scene, null: false, foreign_key: true
      t.text :description_story
      t.text :description_music
      t.string :composer
      t.string :artist
      t.string :title
      t.string :music

      t.timestamps
    end
  end
end
