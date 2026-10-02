class CreateChapters < ActiveRecord::Migration[8.1]
  def change
    create_table :chapters do |t|
      t.string :title
      t.string :chapterno
      t.string :content

      t.timestamps
    end
  end
end
