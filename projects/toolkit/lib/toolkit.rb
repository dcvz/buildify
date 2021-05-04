# frozen_string_literal: true

require "thor"
require "zeitwerk"

loader = Zeitwerk::Loader.new
loader.push_dir(__dir__)
loader.inflector.inflect "cli" => "CLI"
loader.setup

module Toolkit
  class CLI < Thor
    desc "test", "Run tests"
    subcommand "test", Commands::Test

    desc "build", "Build components"
    subcommand "build", Commands::Build
  end
end
