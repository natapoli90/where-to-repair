class InquiryMailer < ApplicationMailer

  def send_email(inquiry, company)
    @company = company
    subject = "New quote request"
    company.email=['natapoli90@gmail.com', 'abr415city@gmail.com', 'pxlperfection@gmail.com']
    from_name = %("#{@inquiry.first_name} #{@inquiry.last_name}" <#{@inquiry.email}>)
    mail({from: from_name, bcc: company.email.join(';'), subject: subject})
  end
end
