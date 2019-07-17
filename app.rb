require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    # text_from_user = params[:user_text]
    # @analyzed_text = TextAnalyzer.new(text_from_user)
    # this code can be shortened to below where :user_text can be directly used as an arguement. 
# the instance variable @analyzed_text is an arbitary name but now it can be accessed in the erb file while also portraying the behaviors of the TextAnalyzer class
    @analyzed_text = TextAnalyzer.new(params[:user_text])

    erb :results
  end
end