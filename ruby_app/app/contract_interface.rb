require 'ethereum.rb'

class ContractInterface
  attr_accessor :contract_name, :address

  def client
    return @client if @client
    @client = Ethereum::HttpClient.new(ENV['ETH_ENDPOINT'])
    @client.default_account = ENV['ETH_DEFAULT_ACCOUNT']
  end

  def contract
    return @contract if @contract
    @contract = Ethereum::Contract.create(name: contract_name,
                                          client: client,
                                          address: address,
                                          abi: contract_json['abi'])
  end

  def contract_json
    @contract_json ||= JSON.parse(File.read("../../#{contract_name}.json"))
  end
end
