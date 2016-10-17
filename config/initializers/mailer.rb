Rails.application.configure do
  config.action_mailer.smtp_settings = {
    address:              'smtp.163.com',
    port:                 25,
    domain:               '163.com',
    user_name:            'lmw0827@163.com',
    password:             'daming0827',
    authentication:       'login',
    enable_starttls_auto: true }
end

ActionMailer::Base.class_eval do
  # after_action :prevent_delivery_to_test_account

  default from: "no-reply@shizi.com"
  layout "mailer"

  # protected
  #
  # def prevent_delivery_to_test_account
  #   recipients = ([mail.to] + [mail.cc] + [mail.bcc]).flatten.compact
  #   if mail.to.blank? || recipients.blank?
  #     mail.perform_deliveries = false
  #     return
  #   end
  #
  #   if @force_deliver == true || self.is_a?(Devise.mailer)
  #     mail.perform_deliveries = true
  #     return
  #   end
  #
  #   address_domains = Mail::AddressList.new(recipients.join(', ')).addresses.map(&:domain)
  #   white_list = Settings.mailer['white_list'] || []
  #
  #   if (address_domains - white_list).present?
  #     mail.perform_deliveries = false
  #   end
  # end
end
