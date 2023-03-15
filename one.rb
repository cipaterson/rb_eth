#!/usr/bin/env ruby

# use the local version of the code instead of a globally installed gem
##$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "eth"
##include Eth

my_key=ENV['SIGNER_PRIVATE_KEY']
infura_api_key=ENV['INFURA_API_KEY']
key = Eth::Key.new priv:  my_key 

infura = Eth::Client.create "https://goerli.infura.io/v3/#{infura_api_key}"
puts infura.eth_block_number['result'].to_i(16)

contract=Eth::Contract.from_file(file: 'contracts/hello_world.sol')
puts contract
addr=infura.deploy_and_wait(contract, sender_key: key)
puts addr