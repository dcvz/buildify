# frozen_string_literal: true

module Toolkit
  module Services
    module Test
      class CLI < Base
        def call
          manifest_path = File.expand_path("Cargo.toml", Constants::Directories::CLI)
          Utilities::System.system("cargo", "test", "--manifest-path", manifest_path)
        end
      end
    end
  end
end
