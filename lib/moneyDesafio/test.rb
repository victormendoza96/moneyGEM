
# fifty_eur = Money.new(50, 'EUR')
# twenty_dollars = Money.new(20, 'USD')

# # puts fifty_eur.amount   # => 50
# # puts fifty_eur.currency # => "EUR"
# # puts fifty_eur.inspect  # => "50.00 EUR"

# # puts fifty_eur.convert_to('USD').amount # => 55.50 USD

# puts fifty_eur + twenty_dollars # => 68.02 EUR
# puts fifty_eur - twenty_dollars # => 31.98 EUR
# puts fifty_eur / 2              # => 25 EUR
# puts twenty_dollars * 3         # => 60 USD


# # puts twenty_dollars == Money.new(20, 'USD') # => true
# # puts twenty_dollars == Money.new(30, 'USD') # => false
 
# # puts fifty_eur_in_usd = fifty_eur.convert_to('USD')
# # puts fifty_eur_in_usd == fifty_eur          # => true
 
# # puts twenty_dollars > Money.new(5, 'USD')   # => true
# # puts twenty_dollars < fifty_eur # => true 