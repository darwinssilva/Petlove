class Person < ApplicationRecord
    has_many :animals

    def of_age?
        self.birthdate.year < (Time.zone.now - 18.years).year
    end

    def can_buy_andorinha?
        return true if self.of_age?
    end

    def can_buy_cat?
        return true if self.name.first != 'A'
    end

    def can_buy_more_animals?
        return true if self.animals.pluck(:monthly_cost).sum < 1000.00
    end
end
