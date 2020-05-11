# frozen_string_literal: true

require "protoc/tools/protoc/compiler"

module Grpc
  module Gateway
    # Protoc output classes
    module Protoc
      # Swagger output
      ::Protoc::Tools::Protoc::Compiler.output_class(type: "grpc-gateway") do
        def initialize
          super(target_dir: "generated/grpc_gateway")
        end

        def default_plugin
          Gem.loaded_specs.fetch("protoc-grpc-gateway-plugins").bin_file("protoc-gen-grpc-gateway")
        end
      end
    end
  end
end
