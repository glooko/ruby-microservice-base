require 'pathname'
SPEC_ROOT = Pathname(__dir__).realpath.freeze

ENV['HANAMI_ENV'] ||= 'test'
require 'hanami/prepare'

require_relative 'support/rspec'
require_relative 'support/requests'
require_relative 'support/simplecov_hanami_profile'
require 'capybara'

Capybara.app = Hanami.app

SimpleCov.start 'hanami' if ENV['COVERAGE']
