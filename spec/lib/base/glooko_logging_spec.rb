# frozen_string_literal: true

RSpec.describe 'GlookoLogging' do
  let(:logger_class) { Class.new { include Base::GlookoLogging } }

  it 'logs expected output with json data' do
    test = expect do
      logger_class.new.log('warn', {fog: 'test'}, __LINE__, __method__,
                           __FILE__)
    end
    test.to output(/fog/).to_stdout
  end

  it 'logs expected output with correct file name' do
    test = expect do
      logger_class.new.log('warn', 123, __LINE__, __method__,
                           __FILE__)
    end
    test.to output(/glooko_logging_spec.rb/).to_stdout
  end

  it 'logs expected output with correct line number' do
    test = expect do
      logger_class.new.log('warn', 123, __LINE__, __method__,
                           __FILE__)
    end
    test.to output(/24/).to_stdout
  end
end
