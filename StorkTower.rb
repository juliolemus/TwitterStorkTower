require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "BvrlDf78bXjEBjNcB7Bj4bQg7"
  config.consumer_secret     = "iyxyHXk628rRf44dc3O8Q7K0psipgsKX3RcBkRzLhlIh3sTcTx"
  config.access_token        = "3047831041-nRAFKXq3WrhNxhRiAfpxgg82aMogMlx2UzmgTPO"
  config.access_token_secret = "kLpHRgFrKeCcEiZY6gn37mukVbwojabl3GTQTQYTjstIv"
end

while true 
	if Time.now.min == 0
		post = "BONG "*Time.now.hour % 12
		client.update(post[0..-1])
		puts "Success"
		sleep()
	end

end 

