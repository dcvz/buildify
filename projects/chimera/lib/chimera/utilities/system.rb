# frozen_string_literal: true

module Chimera
  module Utilities
    module System
      def self.system(*args)
        Kernel.system(*args) || Kernel.abort
      end
    end
  end
end
