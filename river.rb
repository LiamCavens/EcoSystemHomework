class River
    
    attr_reader :name, :fish
    # attr_accessor :fish_count

    def initialize(name, fish)
        @name = name
        @fish = fish
    end

    def fish_count()
        @fish.count()
    end

    def put_fish_in_river(fish)
       @fish.push(fish)
    end

    def take_fish_from_river()
        return @fish.pop()
    end


end