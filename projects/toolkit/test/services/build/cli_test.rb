# frozen_string_literal: true

require "test_helper"

module Toolkit
  module Services
    module Build
      class CLITest < TestCase
        def test_call
          # Given
          manifest_path = File.expand_path("Cargo.toml", Constants::Directories::CLI)
          Utilities::System
            .expects(:system)
            .with("cargo", "build", "--manifest-path", manifest_path)

          # When/then
          Services::Build::CLI.call
        end
      end
    end
  end
end
