require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @reverse = params[:name]
    "#{@reverse.reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @times_phrase = ''
    @times_phrase = params[:number].to_i.times do 
      "#{params[:phrase]}," 
    end
    "@times_phrase"
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:words4]} #{params[:words5]}."
    
  end

  get '/:operation/:number1/:number2' do
    add_num.to_s = "params[:number1].to_i + params[:number2].to_i"
    sub_num.to_s = "params[:number2].to_i - params[:number1].to_i"
    mlt_num.to_s = "params[:number1].to_i * params[:number2].to_i"
    div_num.to_s = "params[:number1].to_i / params[:number2].to_i"
  end
end