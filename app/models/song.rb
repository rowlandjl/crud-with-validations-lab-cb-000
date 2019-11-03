class Song < ApplicationRecord
  validates :title, presence:true
  validates :released, inclusion: { in: [true, false] }
  validates :release_year, numericality: { only_integer: true }
end
