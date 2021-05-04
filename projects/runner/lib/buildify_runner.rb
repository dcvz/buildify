# frozen_string_literal: true

require_relative "buildify_runner/version"
require "zeitwerk"

loader = Zeitwerk::Loader.for_gem
loader.setup # ready!

module BuildifyRunner
  class Error < StandardError; end
  # Your code goes here...
end
