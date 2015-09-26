class Address < ActiveRecord::Base
  belongs_to :user
  has_many :orders
  validates :line1, presence: :true
  validates :county, presence: :true
  validates :postalcode, presence: :true, length: { is: 5 }, numericality: { only_integer: true }
  validates :city, presence: :true

  def to_s
    a = [line1, city, county, postalcode].compact.join(", ")
  end

end
