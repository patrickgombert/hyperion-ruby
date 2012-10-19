require 'hyperion'
require 'net/http'

def test_app_name
  '_HTEST_'
end

TYPES = ['testing', 'other_testing']

def empty_indexes(index_url, ds)
  url = URI.parse(index_url)
  Net::HTTP.start(url.host, url.port) do |http|
    TYPES.each do |type|
      type_name = ds.send(:type_name, type)
      path = "#{url.path}/#{type_name}"
      http.request(Net::HTTP::Delete.new(path))
    end
  end
end

def with_testable_elastic_datastore(port)
  index_url = "http://localhost:#{port}/hyperion"
  ds = Hyperion.new_datastore(:elasticsearch, :app => test_app_name, :default_index_url => index_url)
  around :each do |example|
    Hyperion.datastore = ds
    example.run
    empty_indexes(index_url, ds)
    Hyperion.datastore = nil
  end
end
