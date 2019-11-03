class Song < ApplicationRecord
  validates :title, presence: true
  validates :released, inclusion: { in: [true, false] }
  validates :release_year, presence: true, if: :released?

  def released?
    released
  end

  def current_year 
    Date.today.year 
  end 
end
