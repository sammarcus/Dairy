class Order < ActiveRecord::Base
  has_one :containment
  has_one :flavor, :through => :containment

  has_one :customer

  validates :name, presence: true,
            allow_blank: false,
            uniqueness: true

end

  # <%= simple_form_for Customer.new do |f| %>
  # <%= f.association :customer %>
  # <%= f.input :name %>
  # <%= f.input :phone %>
  # <%= f.input :email %>
  # <%= f.button :submit %>
  # <% end %>
    # <%= f.label :text %><br>
    # <%= f.text_area :text %>
