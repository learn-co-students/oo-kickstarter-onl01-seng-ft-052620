class Project
  attr_accessor :title
  attr_reader :backers

  def initialize(title)
    self.title = title
    @backers = []
  end

  def add_backer(backer_instance)
    @backers << backer_instance
    backer_instance.back_project(self) unless backer_instance.backed_projects.include?(self)
  end
end