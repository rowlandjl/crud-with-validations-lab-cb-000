class Song < ApplicationRecord
  validates :title, presence:true
  validates :released, inclusion: { in: [true, false] }
end
