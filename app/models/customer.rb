class Customer < ActiveRecord::Base
  belongs_to :order

    validates :name, presence: true,
            allow_blank: false,
            uniqueness: true
end
