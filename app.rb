require_relative 'config/environment'

class App < Sinatra::Base
	get '/reversename/:name' do
		@name = params[:name]
		@name.reverse
	end

	get '/square/:number' do
		@num = params[:number].to_i
		"#{@num * @num}"
	end

	get '/say/:number/:phrase' do
		@num = params[:number].to_i
		@phrase = params[:phrase].sub('%20', ' ')
		"#{@phrase * @num}"
	end

	get '/say/:word1/:word2/:word3/:word4/:word5' do
		@phrase = params.values.join(' ')
		"#{@phrase}."
	end

	get '/:operation/:number1/:number2' do
		@op = params[:operation]
		@num1 = params[:number1].to_i
		@num2 = params[:number2].to_i

		if @op == 'add'
			"#{@num1 + @num2}"
		elsif @op == 'subtract'
			"#{@num1 - @num2}"
		elsif @op == 'multiply'
			"#{@num1 * @num2}"
		else
			"#{@num1 / @num2}"
		end
	end
end