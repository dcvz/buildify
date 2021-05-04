# frozen_string_literal: true

module Toolkit
  module Services
    class Base
      def self.call(*args, **kwargs, &block)
        new(*args, **kwargs).call(&block)
      end

      def call
        raise NotImplementedError
      end
    end
  end
end
