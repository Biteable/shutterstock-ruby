require 'spec_helper'

RSpec.describe ShutterstockRuby do

  it 'has the correct default' do
    client = ShutterstockRuby::Client.new

    expect(client.configuration.access_token).to be nil
    expect(client.configuration.api_client).to be nil
    expect(client.configuration.api_secret).to be nil
  end

  it 'sets the correct configuration' do
    token = SecureRandom.uuid
    key = SecureRandom.uuid
    secret = SecureRandom.uuid

    client = ShutterstockRuby::Client.new(access_token: token, api_client: key, api_secret: secret)

    expect(client.configuration.access_token).to equal(token)
    expect(client.configuration.api_client).to equal(key)
    expect(client.configuration.api_secret).to equal(secret)
  end
end
