require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "UAezPbfScqJWgjdXcCvIluAVB"
  config.consumer_secret     = "s1ksLXcBzZ03frb1YoSzPx737Bhb3Q2o8x8nRyoS9ilnpQG0ad"
  config.access_token        = "3047831041-nRAFKXq3WrhNxhRiAfpxgg82aMogMlx2UzmgTPO"
  config.access_token_secret = "kLpHRgFrKeCcEiZY6gn37mukVbwojabl3GTQTQYTjstIv"
end
