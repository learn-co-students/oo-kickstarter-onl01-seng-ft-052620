class Project
attr_reader :backers, :title

def initialize(name)
    @title = name
    @backers = []
end

def add_backer(backer_v)
    backer_v.back_project(self) unless backer_v.backed_projects.include?(self)
    @backers << backer_v
end

end