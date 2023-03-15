#!/usr/bin/env ruby

# use the local version of the code instead of a globally installed gem
##$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "eth"
##include Eth

project_id='c1f6fa004ded489fa95d3d84219e8860'
networks = [:mainnet, :Goerli, :Sepolia,
  "palm-mainnet", "palm-testnet", "polygon-mainnet", "polygon-mumbai"
]

networks.each {|n|
  infura = Eth::Client.create "https://#{n}.infura.io/v3/#{project_id}"
  puts "#{n}: #{infura.eth_block_number['result'].to_i(16)}"
}

=begin
Aurora Mainnet
Aurora Testnet
Near Mainnet
Near Testnet
Arbitrum Mainnet
Arbitrum Rinkeby
Optimism Mainnet
Optimism Kovan
=end