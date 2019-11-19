require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end
  
  get '/square/:number' do
    num = params[:number].to_i
    square = num * num
    "#{square}"
  end
  
  get '/say/:number/:phrase' do
    number = params[:number].to_i
    phrase = params[:phrase]
    "#{phrase}" * number
  end
  
  
  
end