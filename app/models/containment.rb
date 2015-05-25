class Containment < ActiveRecord::Base
  belongs_to :order
  has_one :flavor

  has_many :toppings

  validates :name, presence: true,
            allow_blank: false,
            uniqueness: true

  has_attached_file :avatar_file_name, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  # validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
