require 'hyperion/dev/ds_spec'
require 'hyperion/elasticsearch'
require 'hyperion/elasticsearch/spec_helper'

describe Hyperion::Elasticsearch do

  context 'live' do
    with_testable_elastic_datastore(9200)

    include_examples 'Datastore'
  end
end
