class Topping < ActiveRecord::Base
  belongs_to :containment

  validates :name, presence: true,
                    allow_blank: false,
                    uniqueness: true
end
