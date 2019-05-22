class Person < ApplicationRecord
    has_many :animals

    MAX_VALUE_TO_BUY = 1000.00
    OF_AGE = 18

    def of_age?
        self.birthdate.year < (Time.zone.now - OF_AGE.years).year
    end

    def can_buy_andorinha?
        return true if self.of_age?
    end

    def can_buy_cat?
        return true if self.name.first != 'A'
    end

    def can_buy_more_animals?
        return true if self.animals.sum(:monthly_cost) < MAX_VALUE_TO_BUY
    end
end
