require 'hyperion/elasticsearch/datastore'

module Hyperion
  module Riak
    def self.new(opts={})
      Datastore.new(opts)
    end
  end
end
