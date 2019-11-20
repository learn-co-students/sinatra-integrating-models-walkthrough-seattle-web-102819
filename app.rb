require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'


class App < Sinatra::Base

  get '/' do
    erb :index
  end

    post '/' do
    text_from_user = params[:user_text]
    @analyzed_text = TextAnalyzer.new(text_from_user)
      @count = @analyzed_text.count_of_words.to_s
      a = @analyzed_text.most_common_letter
      @letter = a[0]
      @letter_count = a[1]
    erb :results
  end


end
