require_relative 'contract_interface'

class RubyistContractInterface < ContractInterface
  def initialize(*args)
    @contract_name = 'Rubyist'
    @address = ENV['RUBYIST_CONTRACT_ADDRESS']
    @args = args
  end

  def self.create(name, address)
    inst = new
    inst.set_gas_limit('create', name, address)
    inst.signed_contract.transact.create(name, address)
  end

  def self.get(address)
    new.contract.call.get(address)
  end
end
