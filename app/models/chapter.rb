class Chapter < ActiveRecord::Base

  validates :name, presence: true
  validates :number, presence: true
  validates :number, numericality: { only_integer: true }

end
