require 'ethereum.rb'

class ContractInterface
  attr_accessor :contract_name, :address

  def client
    return @client if @client
    @client = Ethereum::HttpClient.new(ENV['ETH_ENDPOINT'])
    @client.default_account = ENV['ETH_DEFAULT_ACCOUNT']
    @client
  end

  def contract
    @contract ||= Ethereum::Contract.create(name: contract_name,
                                            client: client,
                                            address: address,
                                            abi: contract_json['abi'])
  end

  def signed_contract
    if ENV['ETH_NETWORK']
      contract
    else
      contract.key = Eth::Key.new(priv: ENV['ETHEREUM_PRIVATE_KEY'])
      contract
    end
  end

  def contract_json
    return @contract_json if @contract_json
    path = "/Users/samraife/Documents/ruby_ethereum_demo/truffle_app/build/contracts/#{contract_name}.json"
    @contract_json = JSON.parse(File.read(path))
  end

  def set_gas_limit(function_name, *args)
    func = contract.parent.functions.find { |func| func.name == function_name }
    payload = contract.call_args(func, args)
    contract.gas_limit = client.eth_estimate_gas(payload)['result'].to_i(16)
  end
end
