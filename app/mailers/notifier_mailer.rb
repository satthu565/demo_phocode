class NotifierMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier_mailer.order_received.subject
  #
  default :from => "MST <satthutit@gmail.com>"

  def order_received(order)
    @order = order

    mail :to => @order.email, :subject => "We've received your order"
  end
end
