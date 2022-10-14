# frozen_string_literal: true

require 'logger'
require 'json'

module Base::GlookoLogging
  def logger
    @logger ||= Logger.new($stdout)
  end

  def formatter(line, method, file)
    logger.formatter = proc do |severity, datetime, progname, msg|
      "#{JSON.dump({
                     severity:,
                     datetime:,
                     progname:,
                     line:,
                     method:,
                     file:,
                     message: msg
                   })}\n"
    end
  end

  def progname=(progname)
    logger.progname = progname
  end

  def log(severity, message, line, method, file)
    formatter(line, method, file)
    case severity
    when 'debug'
      logger.debug(message)
    when 'error'
      logger.error(message)
    when 'warn'
      logger.warn(message)
    when 'fatal'
      logger.fatal(message)
    when 'unknown'
      logger.unknown(message)
    else
      logger.info(message)
    end
  end
end
