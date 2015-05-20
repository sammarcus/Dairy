class Customer < ActiveRecord::Base
  # has_many :orders
  belongs_to :order

    validates :name, presence: true,
            allow_blank: false,
            uniqueness: true
end
