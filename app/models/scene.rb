class Scene < ApplicationRecord
  belongs_to :chapter
  has_many :socialmediaposts
  has_and_belongs_to_many :characters, :join_table => :scenehascharacters
end
