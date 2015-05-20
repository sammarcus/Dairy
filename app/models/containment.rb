class Containment < ActiveRecord::Base
  belongs_to :order
  has_one :flavor

  has_many :toppings

  validates :name, presence: true,
                    allow_blank: false,
                    uniqueness: true

end
