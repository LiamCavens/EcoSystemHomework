class Bear

    attr_reader :name
    attr_accessor :stomach

    def initialize(name, stomach)
        @name = name
        @stomach = stomach
    end

    def get_fish(fish)
        @stomach.push(fish)
    end

    def bear_roar()
        return "RROOOOOAAARRRRRR"
    end

    # def food_count()
    #     @fish.count()
    # end

    # def stomach()
    #     return @stomach
    # end

    # def put_food_in_stomach(river)
    #     food = river.take_fish_from_river()
    #    @stomach.push(food)
    # end
end