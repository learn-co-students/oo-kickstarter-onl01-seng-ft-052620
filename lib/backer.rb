class Backer

  attr_reader :name, :backed_projects

  def initialize(name)
    @backed_projects = []
    @name = name
  end

  def backer(project)
    @backed_projects << project
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self
  end
end