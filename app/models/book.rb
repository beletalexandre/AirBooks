class Book < ApplicationRecord
  belongs_to :user

  enum category: ['policier', 'roman francais', 'roman etranger', 'livre de voyage', 'S.F.', 'heroic Fantasy']

  mount_uploader :photo, PhotoUploader
end
