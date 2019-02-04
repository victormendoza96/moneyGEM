# moneyDesafio

moneyDesafio puede conversiones de monedas, hacer operaciones aritméticas y demas.
Las caractersticas y el uso serán descritos a continuacion
 
### Configurar la moneda default y sus respectivas conversiones (here, EUR) ⚙ ️
```ruby
Money.configure do |config|
  config.default_currency = "EUR"
  config.conversions = {
    'USD' => 1.11,
    'Bitcoin' => 0.0047
  }
end
```

#### Instanciar objeto
```ruby
fifty_eur = Money.new(50, 'EUR')
```

#### Get monto y moneda
```ruby
fifty_eur.amount   # => 50
fifty_eur.currency # => "EUR"
fifty_eur.inspect  # => "50.00 EUR"
```

#### Convertir a otra moneda (devuelve una instancia, no un string)
```ruby
fifty_eur.convert_to('USD') # => 55.50 USD
```

#### Realizar operaciones aritmeticas
```ruby
twenty_dollars = Money.new(20, 'USD')
```

### Aritmeticas:
```ruby
fifty_eur + twenty_dollars # => 68.02 EUR
fifty_eur - twenty_dollars # => 31.98 EUR
fifty_eur / 2              # => 25 EUR
twenty_dollars * 3         # => 60 USD
```

#### Comparaciones (también en diferentes monedas): 📌
```ruby
twenty_dollars == Money.new(20, 'USD') # => true
twenty_dollars == Money.new(30, 'USD') # => false
 
fifty_eur_in_usd = fifty_eur.convert_to('USD')
fifty_eur_in_usd == fifty_eur          # => true
 
twenty_dollars > Money.new(5, 'USD')   # => true
twenty_dollars < fifty_eur             # => true
```

#instalacion 🔧
```
gem install moneyDesafio
```

es capaz de ser cargada desde irb
```
irb
require 'moneydesafio'
Money.new
```