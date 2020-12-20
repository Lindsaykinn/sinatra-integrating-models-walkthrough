require_relative 'config/environment'
#requiring the models/text_analyzer gives us the ability to reference the TextAnalyzer class and invoke its new method
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end


  
  post '/' do
    @analyzed_text = TextAnalyzer.new(params[:user_text])

    erb :results 
  end
#the below post can be also be written as:
  # post '/' do
  #   text_from_user = params[:user_text]

  #   #takes data from the params[:user_text] and feeds it into a new instance of the TextAnalyzer class:
  #   @analyzed_text = TextAnalyzer.new(text_from_user)

  #   erb :results
  # end
end
