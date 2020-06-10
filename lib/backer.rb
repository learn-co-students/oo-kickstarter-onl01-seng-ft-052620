class Backer
attr_reader :name, :backed_projects

def initialize(name)
    @name = name
    @backed_projects = []
end

def back_project(project_title)
    @backed_projects << project_title
    project_title.add_backer(self)
    @backed_projects
end

end