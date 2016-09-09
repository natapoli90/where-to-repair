class Admin < ApplicationRecord
  has_secure_password

  def self.confirm(params)
    @admin = Admin.where("email ILIKE ?", params[:email]).first
    @admin.try(:authenticate, params[:password])
  end
end
