require 'net/http'
require 'net/https'
require 'uri'
require 'json'

class Request
  def self.url_to_uri(url)
    URI.parse(url)
  end

  def self.get(url,headers={})
    uri=url_to_uri(url)
    request = Net::HTTP::Get.new(uri,headers)
    Net::HTTP.start(uri.hostname) do |http|
      http.request(request)
    end
  end

  def self.post(url,body={},headers={})
    uri=url_to_uri(url)
    request = Net::HTTP::Post.new(uri,headers)
    request.content_type = 'application/json'
    request.body = body.to_json
    Net::HTTP.start(uri.hostname) do |http|
      http.request(request)
    end
  end
end
