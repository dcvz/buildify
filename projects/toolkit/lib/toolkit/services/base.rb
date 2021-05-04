# frozen_string_literal: true

module Toolkit
  module Services
    class Base
      def self.call(*args, &block)
        new(*args).call(&block)
      end

      def call
        raise NotImplementedError
      end
    end
  end
end
