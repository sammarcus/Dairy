class Order < ActiveRecord::Base
  has_one :containment
  has_one :flavor, :through => :containment

  has_one :customer

  validates :name, presence: true,
            allow_blank: false,
            uniqueness: true

end

