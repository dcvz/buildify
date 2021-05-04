
# frozen_string_literal: true

module Toolkit
  module Commands
    class Test < Base
      desc "toolkit TEST", "Run all Toolkit tests or the TEST one."
      def toolkit(test = nil)
        Services::Test::Toolkit.call(test: test)
      end
    end
  end
end
