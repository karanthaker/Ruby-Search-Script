Ruby-Search-Script
==================

A simple Ruby script that performs a search on Amazon.com for a book. I was playing around with Ruby and web services and wrote this for some quick testing on the command-line. Specifically, this script finds the titles of books matching the passed keyword(s) from Amazon and shows the results in a list.

To run this program, you'll need an AWS account and add your own Access Key ID inside the Ruby code. Below is a sample run of the script.

<code>
$ruby ruby-search-script.rb CHSK459SNFS "ruby on rails" <br>
"Ruby on Rails Tutorial: Learn Web Development with Rails" by Michael Harti <br>
"Agile Web Development with Rails" by  Sam Ruby, Dave Thomas, David Heinemeier Hansson <br>
</code>

When this script calls the method Amazon::Search::Request#keyword_search, the script acts as a sort of web browser. It makes an HTTP request to the Amazon URL, in our case, something similar to http://xml.amazon.com/onca/xml3?KeywordSearch=ruby+on+rails&mode=books&f=xml&type=lite&page=1.

The web server at xml.amazon.com responds with an XML document, which in case of an actual browser is parsed into the beatifully formatted pages we see, or in our case here, is parsed into the list of results we see (as in the example above).


