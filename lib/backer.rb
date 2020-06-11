class Backer

  attr_reader :name
  attr_accessor :backed_projects
  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(name)
    @backed_projects << name
    name.backers << self
  end

end
