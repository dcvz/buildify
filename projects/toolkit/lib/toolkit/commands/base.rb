# frozen_string_literal: true

module Toolkit
  module Commands
    class Base < Thor
      # rubocop:disable Style/OptionalBooleanParameter
      def self.banner(command, _namespace = nil, _subcommand = false)
        # rubocop:enable Style/OptionalBooleanParameter
        "#{basename} #{subcommand_prefix} #{command.usage}"
      end

      def self.subcommand_prefix
        # Name returns the class of the command. For example: Toolkit::Commands::Test::Tuist::Command
        # From this method we return how the command should be presented in the output generated by help.
        name
          .gsub("Toolkit::Commands::", "")
          .gsub("::", " ")
          .downcase
      end
    end
  end
end
