class User < ActiveRecord::Base
  has_many :orders
  def self.find_or_create_by_auth(auth_data)
    user = where(provider: auth_data[:provider], uid: auth_data[:uid]).first_or_create
    user.update(name:auth_data[:info][:name])
  end
end
