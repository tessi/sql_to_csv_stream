# frozen_string_literal: true

require 'bundler/setup'
require 'sql_to_csv_stream'
require 'fivemat'

ENV['RAILS_ENV'] ||= 'test'
RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.default_formatter = 'Fivemat'
  config.default_formatter = 'doc' if config.files_to_run.one?

  config.order = :random

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
