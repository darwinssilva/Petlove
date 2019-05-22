# Petlove

*Qual é o custo médio dos animais do tipo cachorro?

`Animal.where(animal_type: 'Cachorro').average(:monthly_cost)`

*Quantos cachorros existem no sistema?

`Animal.where(animal_type: 'Cachorro').count`

*Qual o nome dos donos dos cachorros (Array de nomes)

`Person.joins(:animals).where("animals.animal_type = 'Cachorro'").pluck(:name)`

*Retorne as pessoas ordenando pelo custo que elas tem com os animais (Maior para menor)
`Person.joins(:animals).group('person_id').order('SUM("monthly_cost") desc')`
`Animal.group(:owner).order('sum_monthly_cost DESC').sum(:monthly_cost)`
`Animal.group(:owner).order('sum_monthly_cost DESC').sum(:monthly_cost).map { |v, k| [v.name, k] }`
`Animal.group(:owner).order('sum_monthly_cost DESC').sum(:monthly_cost).map { |k, v| { name: k.name, person_id: k.id, value: v } }`

*Levando em consideração o custo mensal, qual será o custo de 3 meses de cada pessoa?
`Animal.group(:owner).order('sum_monthly_cost DESC').sum(:monthly_cost).map { |v, k| [v.name, k * 3]}`
