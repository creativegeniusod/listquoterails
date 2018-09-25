require 'net/http'
require 'json'
class PostsController < ApplicationController
	def cronadd
		source = 'http://quotesondesign.com/wp-json/posts?filter[orderby]=rand&filter[posts_per_page]=1'
		json_string = JSON.parse(Net::HTTP.get(URI.parse(source)))

		json_string.each do |json|
			json_strings = Post.where(:title=>json['title'])
			if !json_strings.nil? && !json_strings.empty?
				puts json_strings.inspect
			else
				Post.create(
				 	title:json['title'],
				 	quote:json['ID'],
				 	text:json['content'],
				 	link:json['link']
				)
			end
		end
  		render :layout => false
  	end
  	def listquote
  		@posts = Post.limit(1).order("RANDOM()")
  	end
  	def ajaxcall
  		@posts = Post.limit(1).order("RANDOM()")
  		render :layout => false
  	end
end
