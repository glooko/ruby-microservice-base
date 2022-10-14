RSpec.describe 'GlookoLogging' do
  let(:logger_class) { Class.new { include Base::GlookoLogging } }
  let(:severity) { 'warn' }
  let(:test_log) do
    logger_class.new.log(severity,
                         {fog: 'test'},
                         __LINE__,
                         __method__,
                         __FILE__)
  end

  it 'logs expected output with json data' do
    expect { test_log }.to output(/fog/).to_stdout
  end

  it 'logs expected output with correct file name' do
    expect { test_log }.to output(/glooko_logging_spec.rb/).to_stdout
  end

  it 'logs expected output with correct line number' do
    expect { test_log }.to output(/7/).to_stdout
  end

  it 'log gets called with correct arguments' do
    test_log do
      expect(logger_class.new)
        .to have_received(:log)
        .with('warn', {fog: 'test'}, 6, :test_log, 'glooko_logging_spec.rb')
    end
  end

  context 'when logger logs severity' do
    context 'for debug seveirty' do
      let(:severity) { 'debug' }

      it 'logs expected severity' do
        expect { test_log }.to output(/DEBUG/).to_stdout
      end
    end

    context 'for error severity' do
      let(:severity) { 'error' }

      it 'logs expected severity' do
        expect { test_log }.to output(/ERROR/).to_stdout
      end
    end

    context 'for info severity' do
      let(:severity) { 'info' }

      it 'logs expected severity' do
        expect { test_log }.to output(/INFO/).to_stdout
      end
    end

    context 'for fatal severity' do
      let(:severity) { 'fatal' }

      it 'logs expected severity' do
        expect { test_log }.to output(/FATAL/).to_stdout
      end
    end

    context 'for unknown severity' do
      let(:severity) { 'unknown' }

      it 'logs expected severity' do
        expect { test_log }.to output(/ANY/).to_stdout
      end
    end
  end
end
