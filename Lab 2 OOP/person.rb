class Person
    # defin attribute
    # create setters and getters
    #  attr_reader :name =>getters
    #  attr_writer :name => setters

    attr_accessor :name
    @name
    # constructor
    def initialize(name)
        @name=name
    end
    #function to validate name
    def valid_name(name)
        if name.match(/\A[[:alpha:]]+\z/)
            return true
        else
            return false
        end
    end
end

