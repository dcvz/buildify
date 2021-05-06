# frozen_string_literal: true

module Chimera
  module Commands
    class Build < Base
      desc "cli", "Build Buildify's CLI"
      def cli
        Services::Build::CLI.call
      end
    end
  end
end
