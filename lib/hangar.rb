require "hangar/engine"
require 'hangar/constraint'
require 'database_cleaner'

module Hangar
  BadEnvironmentError = Class.new(StandardError)

  mattr_writer :do_not_delete
  mattr_accessor :clean_strategy
  self.clean_strategy = :deletion

  def self.do_not_delete
    Array.wrap(@@do_not_delete)
  end
end

