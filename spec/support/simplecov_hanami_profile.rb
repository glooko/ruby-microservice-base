require 'simplecov'

SimpleCov.profiles.define 'hanami' do
  add_filter '/spec/'
  add_filter 'app/swagger/'
  enable_coverage :branch
  primary_coverage :branch

  coverage_dir 'tmp/reports/coverage/'
end
