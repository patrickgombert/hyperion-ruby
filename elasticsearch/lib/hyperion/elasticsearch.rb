require 'hyperion/elasticsearch/datastore'

module Hyperion
  module Elasticsearch
    def self.new(opts={})
      Datastore.new(opts)
    end
  end
end
