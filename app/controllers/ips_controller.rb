require 'net/http'
require 'json'

class IpsController < ApplicationController
  def ips
    response = Net::HTTP.get(URI.parse( "https://www.iplocate.io/api/lookup/"))
    ip = JSON.parse(response)["ip"]
    
    @myipaddr = "Your IP is #{ip}"
  end
end
