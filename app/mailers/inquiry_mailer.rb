class InquiryMailer < ApplicationMailer

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
