class BaseParser

  attr_accessor :data_file

  private

  def matching_strategy(data)
    instances = strategies.map { |strategy| strategy.new(data) }
    instance  = instances.find { |instance| instance.matched? }
    instance || strategies_module::DefaultStrategy.new(data)
  end

  def strategies
    strategies = strategies_module.constants - [:DefaultStrategy]
    strategies.sort!
    strategies.map { |strategy| "#{strategies_module}::#{strategy}".constantize }
  end

  def strategies_module
    "#{self.class.name}Strategies".constantize
  end

end
