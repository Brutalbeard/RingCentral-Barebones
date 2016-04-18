require 'ringcentral_sdk'
require "./config"
require "pp"

client = RingCentralSdk.new(
  $RC_APP_KEY,
  $RC_APP_SECRET,
  RingCentralSdk::RC_SERVER_SANDBOX
)

client.authorize($userName, nil, $password)

http = client.http

response = client.messages.sms.create(
  from: '+18024486684',
  to: '+14074524481',
  text: 'Hi there!'
)

pp response.body
