class CreateChapterhascharacters < ActiveRecord::Migration[8.1]
  def change
    create_table :chapterhascharacters do |t|
      t.references :chapter, null: false, foreign_key: true
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
