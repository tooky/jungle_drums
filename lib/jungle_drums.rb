require "rubygems"
require "bundler"
Bundler.setup

require 'sinatra'
require 'mongo_mapper'

MongoMapper.connection = Mongo::Connection.new('localhost')
MongoMapper.database = 'jungle_drums_development'

class Link
  include MongoMapper::Document
end

helpers do

  def base_url
    if request.port == 80
      "http://#{request.host}/"
    else
      "http://#{request.host}:#{request.port}/"
    end
  end

  def rfc_3339(timestamp)
    timestamp.strftime("%Y-%m-%dT%H:%M:%SZ")
  end
  
  
end

get '/feed' do
  content_type 'application/atom+xml'
  builder do |xml|
    xml.instruct! :xml, :version => '1.0'
    xml.feed :'xml:lang' => 'en-US', :xmlns => 'http://www.w3.org/2005/Atom' do
    end
  end
end
