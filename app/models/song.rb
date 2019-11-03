class Song < ApplicationRecord
  validates :title, presence: true
  validates :released, inclusion: { in: [true, false] }
  validates :release_year, presence: true, if: :released == true

  def released?
    released
  end 
end
