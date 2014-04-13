require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'nest_thermostat'
require 'action_mailer'
require './environment' if File.exists?('environment.rb')

ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address              => "smtp.mandrillapp.com",
  :port                 => 587,
  :enable_starttls_auto => true,
  :user_name            => ENV['MANDRILL_USERNAME'],
  :password             => ENV['MANDRILL_API_KEY'],
  :authentication       => 'login',
  :domain               => ENV['DOMAIN']
}
