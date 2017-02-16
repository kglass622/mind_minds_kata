require 'sinatra'
require_relative 'isbn_in_class.rb'

get '/' do

erb :isbn_input, :locals => { :results => '', :isbn_num => '', :message_one => '', :number => ''}
end

post '/isbn_num' do
	isbn_num = params[:isbn_input]
	# "#{isbn_input}"

results = valid_isbn?(isbn_num)
	# "#{results} results found here"
erb :isbn_input, :locals => {:isbn_num => isbn_num, :results => results, :message_one => ' is a', :number => ' ISBN'}
#	"#{results}"

end

