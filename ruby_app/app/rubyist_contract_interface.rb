require_relative 'contract_interface'

class RubyistContract < ContractInterface
  def initialize(*args)
    @contract_name = 'Rubyist'
    @address = ENV['RUBYIST_CONTRACT_ADDRESS']
    @args = args
  end

  def self.create(name, address)
    new(name, address).contract.transact.create(*args)
  end

  def self.get(name)
    new(name).contract.call.get(*args)
  end
end
