# frozen_string_literal: true

module Toolkit
  module Commands
    class Build < Base
      desc "cli", "Build Buildify's CLI"
      def cli
        Services::Build::CLI.call()
      end
    end
  end
end
