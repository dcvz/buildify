# frozen_string_literal: true

module Chimera
  module Constants
    module Directories
      ROOT = File.expand_path("../../../..", __dir__)
      CHIMERA = File.expand_path("projects/chimera", ROOT)
      CLI = File.expand_path("projects/cli", ROOT)
    end
  end
end
