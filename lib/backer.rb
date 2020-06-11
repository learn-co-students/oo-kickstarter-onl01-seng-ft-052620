class Backer
    @@backed_projects = []
    
    attr_accessor :name

    def initialize(name)
        @name = name
    end
end