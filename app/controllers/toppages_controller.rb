class ToppagesController < ApplicationController
  
  def index
    unless params[:shiritori_code].nil?
    require 'net/http'
    require 'json'
    require 'uri'
    
    word=params[:shiritori_code]
    uri = URI.encode "http://wikipedia.simpleapi.net/api?keyword=#{word}&output=json"
    
    uri = URI.parse(uri)
    req = Net::HTTP::Get.new(uri)
    res = Net::HTTP.start(uri.host, uri.port){|http|
    http.request(req)
    }
    
    results = JSON.parse(res.body)
    @title=[]
    results.each do |res|
    title= res["title"].to_s
    @title.push(title)
    end
    puts @title
    end
  end
end
