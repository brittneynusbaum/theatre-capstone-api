class SavedSong < ApplicationRecord

  belongs_to :song
  belongs_to :user
  has_many :notes
  
end
