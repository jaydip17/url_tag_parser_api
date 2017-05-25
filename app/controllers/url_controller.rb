require 'rubygems'
require 'open-uri'
require 'nokogiri'
class UrlController < ApplicationController
    def index
      url = Url.all 
	 #render json: Url.all
	 render :json => {:success => true, :url => url}
    end
    def parse_url
	  url_to_parse = params[:url] 
	  markup = Nokogiri::HTML(open(url_to_parse))
	  markup.css('h2').each do |el|
	  puts el.text
	  url_object = Url.new(:url => url_to_parse, :tag_name => el.name, :tag_content => el.text)
	  url_object.save
	  end
	  
	  render json: "success! All tags are saved :)"
    end
end