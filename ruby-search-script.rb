#!/usr/bin/ruby -w
# ruby-search-script.rb
# karan thaker

require 'amazon/search'

	if argv.size != 2
		puts "Usage: #{$0} [AWS AccessKey ID] [keywords to search for]"
		exit
	end 
	access_key, search_request = ARGV
	req = Amazon::Search::Request.new(access_key)

	#Looping through every book in the search results
	req.keyword.search(search_request, 'books', Amazon::Search::LIGHT) do |book|

	#The below code prints the book's name and the list of authors
	puts %{"#{book.product_name}" by #{book.authors.join(', )}}

end
