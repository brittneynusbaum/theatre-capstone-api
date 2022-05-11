class Note < ApplicationRecord

  belongs_to :saved_song
  belongs_to :user
  
end
