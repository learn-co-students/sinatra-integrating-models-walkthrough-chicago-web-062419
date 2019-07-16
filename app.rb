require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
#renders the `index.erb` page.
  get '/' do 
    erb :index
  end

  post '/' do
  #receives the form data through params and renders the results page
    @analyzed_text = TextAnalyzer.new(params[:user_text]) #We now have the instance of `TextAnalyzer` saved to an instance variable called `@analyzed_text`
    erb :results
    #This means that we can call it and its methods from the results.erb view that is being rendered, using erb tags!
  end
end
