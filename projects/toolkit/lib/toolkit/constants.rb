# frozen_string_literal: true

module Toolkit
  module Constants
    module Directories
      ROOT = File.expand_path("../../../..", __dir__)
      TOOLKIT = File.expand_path("projects/toolkit", ROOT)
      CLI = File.expand_path("projects/cli", ROOT)
    end
  end
end
