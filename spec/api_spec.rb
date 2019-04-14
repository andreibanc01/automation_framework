require 'spec_helper'
require_relative '../lib/request_flows/request'

describe 'Check posts API', :api do

  it 'userId of the first post is equal to 1' do
    response = Request.get('http://jsonplaceholder.typicode.com/posts/1')

    expect(response.code == '200').to be_truthy

    parsed_response = JSON.parse(response.body)

    expect(parsed_response["userId"] == 1).to be_truthy
  end

  it 'Successfully post a new resource' do
    body = {
      title: 'foo',
      body: 'bar',
      userId: 1
    }
    response = Request.post('https://jsonplaceholder.typicode.com/posts',body)

    expect(response.is_a? Net::HTTPSuccess).to be_truthy
  end
end
