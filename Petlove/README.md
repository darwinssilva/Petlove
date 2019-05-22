# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
ruby 2.3.1p112 (2016-04-26 revision 54768) [x86_64-linux]

* Database creation
rake db:create
rake db:migrate
rake db:seed

* How to run the test suite
rspec spec

*Qual é o custo médio dos animais do tipo cachorro?
`values = Animal.where(animal_type: 'Cachorro').pluck(:monthly_cost)`
`media  = values.sum/values.length`

*Quantos cachorros existem no sistema?
`Animal.where(animal_type: 'Cachorro').count`

*Qual o nome dos donos dos cachorros (Array de nomes)
`Animal.where(animal_type: 'Cachorro').pluck(:owner)`

*Retorne as pessoas ordenando pelo custo que elas tem com os animais (Maior para menor)
`Animal.order(:monthly_cost).pluck(:owner)`

*Levando em consideração o custo mensal, qual será o custo de 3 meses de cada pessoa?
`Animal.all.map { |value| value.monthly_cost * 3}`
