class River
    
    attr_reader :name
    attr_accessor :fish_count

    def initialize(name, fish_count)
        @name = name
        @fish_count = fish_count
    end
end