class Settings
  attr_accessor :default_currency, :conversions

  def initialize()
    @default_currency = 'EUR'
    @conversions = {
      'USD'     => 1.11,
      'BITCOIN' => 0.0047,
      'EUR'     => 0.90 
    }
  end

  
end