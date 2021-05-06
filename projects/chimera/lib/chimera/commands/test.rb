# frozen_string_literal: true

module Chimera
  module Commands
    class Test < Base
      desc "chimera TEST", "Run all Chimera tests or the TEST one."
      def chimera(test = nil)
        Services::Test::Chimera.call(test: test)
      end

      desc "cli", "Run the tests of the Buildify's CLI"
      def cli
        Services::Test::CLI.call
      end
    end
  end
end
