# frozen_string_literal: true

require "test_helper"

module Chimera
  module Services
    module Test
      class CLITest < TestCase
        def test_call
          # Given
          manifest_path = File.expand_path("Cargo.toml", Constants::Directories::CLI)
          Utilities::System
            .expects(:system)
            .with("cargo", "test", "--manifest-path", manifest_path)

          # When/then
          Services::Test::CLI.call
        end
      end
    end
  end
end
