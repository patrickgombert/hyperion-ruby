require 'hyperion/dev/ds_spec'
require 'hyperion/elasicsearch'
require 'hyperion/elasticsearch/spec_helper'

describe Hyperion::Elasticsearch do

  context 'live' do
    with_testable_elastic_datastore

    include_examples 'Datastore'
  end
end
