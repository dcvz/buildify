# frozen_string_literal: true

addpath = lambda do |p|
  $LOAD_PATH.unshift(p) unless $LOAD_PATH.include?(p)
end
addpath.call(File.expand_path("../lib", __dir__))

require "fileutils"
require "tmpdir"
require "tempfile"
require "byebug"

Dir.glob(File.join(__dir__, "test_helpers/*")).sort.each { |f| require(f) }

require "minitest/autorun"
require "minitest/unit"
require "minitest/reporters"

reporter_options = { color: true }
Minitest::Reporters.use!([Minitest::Reporters::DefaultReporter.new(reporter_options)])

require "mocha/minitest"
require "toolkit"

class TestCase < MiniTest::Test
end
