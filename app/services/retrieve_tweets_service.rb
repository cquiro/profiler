# this is WIP
class RetrieveTweetsService
  def initialize(user)
    @user = user
  end

  def perform
    user.tweets = client.user_timeline(user.twitter_account, count: 5)
  end

  private

  attr_reader :user

  def client
    @client ||= Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['CONSUMER_KEY']
      config.consumer_secret     = ENV['CONSUMER_SECRET']
      config.access_token        = ENV['ACCESS_TOKEN']
      config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
    end
  end
end
