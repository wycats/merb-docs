require File.join(File.dirname(__FILE__), '..', 'spec_helper.rb')

describe "/klass" do
  before(:each) do
    @response = request("/klass")
  end
end