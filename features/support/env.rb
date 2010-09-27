# -*- encoding: utf-8 -*-

require 'simplecov'
SimpleCov.start do
  coverage_dir 'coverage/features'
  add_filter 'bin'
  add_filter 'features'
  add_filter 'spec'
end

require 'aruba'
