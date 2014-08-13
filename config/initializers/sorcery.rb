
Rails.application.config.sorcery.submodules = [:reset_password]

Rails.application.config.sorcery.configure do |config|
  
  config.user_config do |user|
    user.username_attribute_names = [:email]  
  end

    config.user_class = "User"
end
