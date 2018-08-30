
class ModelMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.new_record_notification.subject
  #

  def new_record_notification(order_user)
    mail to: order_user, subject: "Congratulations! You order was successfuly made."
  end

end
