puts 'Criando pessoas no banco'

Person.create(name: 'Jhonny Cash',	document: 555555555,	birthdate: '1932-02-26')
Person.create(name: 'Sid Vicious',	document: 555555555,	birthdate: '1957-05-10')
Person.create(name: 'Axl Rose',	document: 555555555,	birthdate: '1962-02-06')
Person.create(name: 'Joey Ramone',	document: 555555555,	birthdate: '1951-19-05')
Person.create(name: 'Bruce Dickinson',	document: 555555555,	birthdate: '1958-08-07')
Person.create(name: 'Kurt Cobain',	document: 555555555,	birthdate: '1967-02-20')
Person.create(name: 'Elvis Presley',	document: 555555555,	birthdate: '2008-08-17')

puts '########################'

puts 'Criando animais no banco'

Animal.create(name: 'Pé de Pano',	monthly_cost: 199.99, animal_type: 'Cavalo', owner: 'Jhonny Cash')
Animal.create(name: 'Rex',	monthly_cost: 99.99, animal_type: 'Cachorro', owner: 'Sid Vicious')
Animal.create(name: 'Ajudante do Papai Noel',	monthly_cost: 99.99, animal_type: 'Cachorro', owner: 'Axl Rose')
Animal.create(name: 'Rex',	monthly_cost: 103.99, animal_type: 'Papagaio', owner: 'Joey Ramone')
Animal.create(name: 'Flora',	monthly_cost: 103.99, animal_type: 'Lhama', owner: 'Bruce Dickinson')
Animal.create(name: 'Dino',	monthly_cost: 177.99, animal_type: 'Iguana', owner: 'Kurt Cobain')
Animal.create(name: 'Lassie',	monthly_cost: 407.99, animal_type: 'Ornitorrinco', owner: 'Elvis Presley')

puts '########################'
