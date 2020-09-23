require 'net/http'
require File.expand_path('../fixtures/http_server', __FILE__)
require File.expand_path('../shared/started', __FILE__)

describe "Net::HTTP#started?" do
  it_behaves_like :net_http_started_p, :started?
end
