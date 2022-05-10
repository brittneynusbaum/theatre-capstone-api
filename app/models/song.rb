class Song < ApplicationRecord

  belongs_to :show
  belongs_to :songwriter
  belongs_to :genre
  belongs_to :tempo
  has_many :saved_songs

end
