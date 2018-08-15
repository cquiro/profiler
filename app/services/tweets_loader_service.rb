class TweetsLoaderService
  def initialize(twitter_handle, limit)
    @twitter_handle = twitter_handle
    @limit = limit
  end

  def perform
    $twitter_client.user_timeline(twitter_handle, count: limit) || []
  end

  private

  attr_reader :twitter_handle, :limit
end
