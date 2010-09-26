# -*- encoding: utf-8 -*-

require 'simplecov'
SimpleCov.start do
  coverage_dir 'coverage/spec'
  add_filter 'bin'
  add_filter 'features'
  add_filter 'spec'
end

require 'rspec'
require 'hubsync'

Dir[File.expand_path('../support/**/*.rb', __FILE__)].each { |f| require f }
Dir[File.expand_path('../fixtures/**/*.rb', __FILE__)].each { |f| require f }

RSpec.configure do |c|
  c.color_enabled = !(ENV.has_key?('EMACS') || ENV.has_key?('TM_MODE') || ENV.has_key?('VIM'))
end
