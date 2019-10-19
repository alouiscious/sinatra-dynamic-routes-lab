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
    times_phrase = ''
    params[:number].to_i.times do 
      times_phrase += params[:phrase]
    end
    times_phrase
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    
    add_num = num1 + num2
    sub_num = num1 - num2
    mlt_num = num1 * num2
    div_num = num1 / num2

    if params[:operation] == 'add'
      add_num.to_s 
    elsif params[:operation] == 'subtract'
      sub_num.to_s
    elsif params[:operation] == 'multiply'
      mlt_num.to_s
    else params[:operation] == 'divide'
      div_num.to_s
    end
  end
end