# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "buildify"
require "minitest/reporters"

Minitest::Reporters.use! Minitest::Reporters::JUnitReporter.new

require "minitest/autorun"
