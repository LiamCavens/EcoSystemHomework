class Bear

    attr_reader :name
    attr_accessor :stomach

    def initialize(name, stomach)
        @name = name
        @stomach = stomach
    end

    def get_fish()
        return "I can get fish"
    end
end