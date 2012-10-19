module Hyperion
  module Elasticsearch
    class Datastore
      def initialize(opts={})
        @app = opts[:app]
      end

      private

      def type_name(type)
        @app.to_s + type
      end
    end
  end
end
