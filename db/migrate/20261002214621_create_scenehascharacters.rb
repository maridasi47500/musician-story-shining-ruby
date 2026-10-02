class CreateScenehascharacters < ActiveRecord::Migration[8.1]
  def change
    create_table :scenehascharacters do |t|
      t.references :scene, null: false, foreign_key: true
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
