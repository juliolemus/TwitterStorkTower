require 'twitter' 


client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV['C_KEY']
  config.consumer_secret     = ENV['C2_KEY']
  config.access_token        = ENV['A_KEY']
  config.access_token_secret = ENV['A2_KEY']
end


hashTags = ['#HarryPotterThemeSong',
      '#HungerGamesSoundtrack',
      '#DisneyMusic',
      '#ChistmasMusic'] 

while true 
  t = Time.now
  if t.min == 20
    current_hour = t.hour % 12
    post = "BONG " * current_hour
    client.update(post[0...-1])
    puts "Posted BONG to Twitter #{current_hour} times at #{t.strftime('%r')}" 
    sleep(100) 
  elsif t.sunday? and t.hour == 11 and t.min == 30
    current_song = hashTags[rand(0...songs.length)]
    client.update(current_song)
    puts "Posted #{current_song} to Twitter at #{t.strftime('%r')}" 
    sleep(70)
  end
end 

