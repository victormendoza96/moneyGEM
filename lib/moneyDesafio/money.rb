class Money
  attr_accessor :amount, :currency
  attr_accessor :configuration
  
  def initialize(amount, currency = Money.settings.default_currency)
    @amount   = amount
    @currency = currency
  end


  def self.settings
    @settings = Settings.new
  end

  def self.configure
    yield settings
  end

  def inspect
    formatted_result
  end


  def convert_to(currency)
    
    if @currency == Money.settings.default_currency
     @amount = show_format((@amount * value_conversion(currency)).to_f)
    else
     @amount = show_format((@amount  / value_conversion(@currency)).to_f) 
    end
    @currency = currency
    return Money.new(@amount, @currency)
  end


  def ==(secund_m)
    @currency == secund_m.currency && @amount == secund_m.amount
  end

  def >(secund_m)
    @amount > convercion(secund_m)
  end

  def <(secund_m)
    @amount < convercion(secund_m)
  end

  def +(secund_m)
  
    formatted_result @amount.to_f + equalized_currency(secund_m).to_f
  end

  
  def -(secund_m)

    formatted_result @amount.to_f - equalized_currency(secund_m).to_f
  end

  def *(value)
    formatted_result @amount * value
  end
  
  def /(value)
    if value.zero?
       return "0 #{@currency}" 
    else
       formatted_result @amount.to_f / value
    end
  end

  
  private

  def equalized_currency(secund_m)
    equal_money?(secund_m.currency) ? convercion(secund_m) : secund_m.amount
  end

  

  def convercion(secund_m)
    
    if @currency == Money.settings.default_currency
    secund_m.amount / value_conversion(secund_m.currency)
    else@currency == Money.settings.default_currency
      
    secund_m.amount * value_conversion(@currency) / value_conversion(secund_m.currency) 
    end
    
  end

  def value_conversion(currency = @currency)
    Money.settings.conversions[currency]
    
  end

  def equal_money?(secund_m)
    puts"quii #{secund_m}"
    secund_m != @currency
  end

  def show_format(amount)
    sprintf('%.2f', amount)
  end

  def formatted_result(amount = @amount, currency = @currency)
   
    "#{show_format amount} #{currency}"
  end

end