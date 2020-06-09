class Backer
	attr_reader :name, :backed_projects
	
	def initialize(name)
		@name = name
		@backed_projects = []
	end

	def back_project(project)
		raise TypeError if project.class != Project
		@backed_projects << project
		project.backers << self
	end
end