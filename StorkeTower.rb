require 'secrets'
require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "BZS8BjEalujmapspfphoSu0x9"
  config.consumer_secret     = "AzgC5UBGYjogHdJJFlETjr4Q2Xb7vJVt9MldkQ46ZVkpvk1Z0f"
  config.access_token        = "3047831041-nRAFKXq3WrhNxhRiAfpxgg82aMogMlx2UzmgTPO"
  config.access_token_secret = "kLpHRgFrKeCcEiZY6gn37mukVbwojabl3GTQTQYTjstIv"
end


hashTags = ['#HarryPotterThemeSong',
      '#HungerGamesSoundtrack',
      '#DisneyMusic',
      '#ChistmasMusic'] 

while true 
  t = Time.now
  if t.min == 0
    current_hour = t.hour % 12
    post = "BONG " * current_hour
    client.update(post[0..-1])
    puts "Posted BONG to Twitter #{current_hour} times at #{t.strftime('%r')}" 
    sleep(70) 
  elsif t.sunday? and t.hour == 11 and t.min == 30
    current_song = hashTags[rand(0...songs.length)]
    client.update(current_song)
    puts "Posted #{current_song} to Twitter at #{t.strftime('%r')}" 
    sleep(70)
  end
end 

