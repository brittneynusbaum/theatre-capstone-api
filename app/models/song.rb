class Song < ApplicationRecord

  belongs_to :show
  belongs_to :songwriter
  belongs_to :genre
  
end
