class Inquiry < MailForm::Base
  attribute :first_name, :validate => true
  attribute :last_name,:validate => true
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :file, :attachment => true
  attribute :car_make, :validate => true
  attribute :car_model, :validate => true
  attribute :car_year, :validate => true
  attribute :message
  attribute :nickname, :captcha  => true

  def headers
   {
    :subject => "Quote Request",
    :to => "natapoli90@gmail.com",
    :from => %("#{first_name} #{last_name}" <#{email}>)
   }
  end
end
