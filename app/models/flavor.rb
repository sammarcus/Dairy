class Flavor < ActiveRecord::Base
  validates :title, presence: true,
                    allow_blank: false
                    uniqueness: true
end
