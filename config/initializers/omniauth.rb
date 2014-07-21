Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['1474093406171057'], ENV['63c7ad4844fc1203858baf32130254d0']
end