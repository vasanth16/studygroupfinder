# frozen_string_literal: true

# Use this hook to configure devise mailer, warden hooks and so forth.
# Many of these configuration options can be set straight in your model.
Devise.setup do |config|
  # The secret key used by Devise. Devise uses this key to generate
  # random tokens. Changing this key will render invalid all existing
  # confirmation, reset password and unlock tokens in the database.
  # Devise will use the `secret_key_base` as its `secret_key`
  # by default. You can change it below and use your own secret key.
  # config.secret_key = '6eefc074f0d8beef113053351ec978eab93768f018f58892bb59012dc7a995c1f0d1106b33d39ffdad0c2918a0ecd0063f1a20581fa35bb3dccee22dc8d9f203'

  # ==> Controller configuration
  # Configure the parent class to the devise controllers.
  # config.parent_controller = 'DeviseController'

  # ==> Mailer Configuration
  # Configure the e-mail address which will be shown in Devise::Mailer,
  # note that it will be overwritten if you use your own mailer class
  # with default "from" parameter.
  #config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'

  # Configure the class responsible to send e-mails.
  # config.mailer = 'Devise::Mailer'

  # Configure the parent class responsible to send e-mails.
  # config.parent_mailer = 'ActionMailer::Base'

  # ==> ORM configuration
  # Load and configure the ORM. Supports :active_record (default) and
  # :mongoid (bson_ext recommended) by default. Other ORMs may be
  # available as additional gems.
  require 'devise/orm/active_record'
  config.omniauth :google_oauth2, '536477294682-25rgd831b9hdknipm5cqugv7ctoungkl.apps.googleusercontent.com', '0NipF6H5MPzThKEJ_TfMRC7i', {scope: "userinfo.email, userinfo.name"}

end
