class Address < ActiveRecord::Base
  validates :line1, presence: :true
  validates :county, presence: :true
  validates :postalcode, presence: :true, length: { is: 5 }, numericality: { only_integer: true }
  validates :city, presence: :true
end
