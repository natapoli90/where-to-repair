class InquiryMailer < ApplicationMailer

    # attribute :name,      :validate => true
    # attribute :category,      :validate => true
    # attribute :first_name,      :validate => true
    # attribute :last_name,      :validate => true
    # attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
    # attribute :file,      :attachment => true
    # attribute :car_make,      :validate => true
    # attribute :car_model,      :validate => true
    # attribute :car_year,      :validate => true
    # attribute :message


    def send_email(inquiry, service)

      @inquiry = inquiry
      @service = service
      sendgrid_category :use_subject_lines
      sendgrid_recipients ['natapoli90@gmail.com', 'abr415city@gmail.com', 'pxlperfection@gmail.com']

      to = "test@test.com"
      from_name = %("#{@inquiry.first_name} #{@inquiry.last_name}" <#{@inquiry.email}>)
      subject = "Quote Request"

      mail({from: from_name, to: to, subject: subject})
    end


end
