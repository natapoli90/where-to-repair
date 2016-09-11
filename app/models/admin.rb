class Admin < ApplicationRecord
  has_secure_password

  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email,
    presence: true,
    format: { with: EMAIL_REGEX},
    length: { maximum: 50 }

  validates :password,
    length: { minimum: 4 }

  def self.confirm(params)
    @admin = Admin.find_by({email: params[:email]})
    @admin.try(:authenticate, params[:password])
  end
end
