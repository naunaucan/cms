# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'],
#            :scope => 'email,user_birthday,read_stream', :display => 'popup'
# end
#
OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development?
    # OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
    # provider :facebook, '10153218967920745', 'bbe2cc4b5512fc814f65f445fb919680'
    provider :facebook, '96510225744', '5a80a41b92591602be6c3fff1ce249d1',
             :scope => 'email,user_birthday,read_stream', :display => 'popup'
  elsif Rails.env.production?
    provider :facebook, '96510225744', '5a80a41b92591602be6c3fff1ce249d1',
             :scope => 'email,user_birthday,read_stream', :display => 'popup'
  end
end
