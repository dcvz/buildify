# frozen_string_literal: true

require_relative "buildify/version"
require "zeitwerk"

loader = Zeitwerk::Loader.for_gem
loader.setup # ready!

module Buildify
  class Error < StandardError; end
  # Your code goes here...
end
