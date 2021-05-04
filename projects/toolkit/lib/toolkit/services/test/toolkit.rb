# frozen_string_literal: true

require "rake/testtask"

module Toolkit
  module Services
    module Test
      class Toolkit < Base
        attr_reader :test

        def initialize(test: nil)
          @test = test
          super()
        end

        def call
          Dir.chdir(Constants::Directories::ROOT) do
            Utilities::System.system(arguments.join(" "))
          end
        end

        private

          def arguments
            lib_directory = File.expand_path("lib", Constants::Directories::TOOLKIT)
            test_directory = File.expand_path("test", Constants::Directories::TOOLKIT)
            test_paths = if @test.nil?
                           Dir.glob(File.join(Constants::Directories::TOOLKIT, "test/**/*_test.rb"))
                         else
                           @test
                         end
            [
              "ruby", "-I#{lib_directory}", "-I#{test_directory}", "-e \"ARGV.each {|f| require f}\"", *test_paths
            ]
          end
      end
    end
  end
end
