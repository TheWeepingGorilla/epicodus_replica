class Lesson < ActiveRecord::Base

  validates :name, presence: true
  validates :number, presence: true
  validates :number, numericality: { only_integer: true }

  default_scope {order('number')}

  belongs_to :section

end
