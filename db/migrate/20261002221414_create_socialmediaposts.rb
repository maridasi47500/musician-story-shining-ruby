class CreateSocialmediaposts < ActiveRecord::Migration[8.1]
  def change
    create_table :socialmediaposts do |t|
      t.references :scene, null: false, foreign_key: true
      t.text :description_story
      t.text :description_pic
      t.string :content
      t.string :pic
      t.string :socialmedia_name

      t.timestamps
    end
  end
end
