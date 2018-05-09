require 'spec_helper'
require 'yaml'

RSpec.describe FortniteApi do
  before(:all) do
    config = OpenStruct.new YAML.load_file "spec/.fortnite_api_config.yml"
    @api_key = config["apikey"]
    @platform = config["platform"]
    @player = config["player"]
  end
  
  it 'has a version number' do
    expect(FortniteApi::VERSION).not_to be nil
  end
  
  it "hasn't an API Key" do
    expect{FortniteApi::Api.new()}.to raise_error(ArgumentError, "API Key not defined: add your API Key'")
  end
  
  it "initialize successfully" do
    expect(FortniteApi::Api.new(@api_key)).to be_a FortniteApi::Api
  end
  
  it "returns a FortniteApi::Player object with :epicuserhandle, :platformnamelong, :stats, :lifetimestats, :recentmatches" do
    api = FortniteApi::Api.new(@api_key)
    player = api.get_json(@platform, @player)
    expect(player).to be_a FortniteApi::Player
    expect(player.epicuserhandle).to be_a String
    expect(player.platformnamelong).to be_a String
    expect(player.stats).to be_a Hash
    expect(player.lifetimestats).to be_a Array
    expect(player.recentmatches).to be_a Array
  end
end