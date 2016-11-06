#App under calvin.hawkes twitter
#App name: TwatzBotz

#See docs: https://github.com/sferik/twitter
$twitter = Twitter::REST::Client.new do |config|
  config.consumer_key = 'KeUMC7PIJe9y1iXrCxpfUWwTe'
  config.consumer_secret = 'mAULpYF5t2CJCouEjpydT6LZcmsKFcklOsqe6ywQa7pIklIRbA'
  config.access_token = '334076944-WeD35ySPLwgcY2sxQH0k5Ch289QlwYPRMbG0QITj'
  config.access_token_secret = 'LR6Agk3KpFqPm60FBjutJoOhA5x7AbJBInMDrFnjwKTvI'
end

$twitter_stream = Twitter::Streaming::Client.new do |config|
  config.consumer_key = 'KeUMC7PIJe9y1iXrCxpfUWwTe'
  config.consumer_secret = 'mAULpYF5t2CJCouEjpydT6LZcmsKFcklOsqe6ywQa7pIklIRbA'
  config.access_token = '334076944-WeD35ySPLwgcY2sxQH0k5Ch289QlwYPRMbG0QITj'
  config.access_token_secret = 'LR6Agk3KpFqPm60FBjutJoOhA5x7AbJBInMDrFnjwKTvI'
end
