class CustomerMailer < ActionMailer::Base
  default from: "prumat3@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.customer_mailer.ticket_created.subject
  #
  def ticket_created(ticket)
    @ticket = ticket

    mail to: @ticket.customer_email, subject: "Support team start working on your ticket"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.customer_mailer.ticket_status_updated.subject
  #
  def ticket_status_updated(ticket)
	@ticket = ticket

    mail to: @ticket.customer_email, subject: "You ticket updated"
  end
end
