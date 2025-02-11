
class Project
    attr_reader :backers, :title

    def initialize(title)
        @backers = []
        @title = title
    end

    def add_backer(backer)
        @backers << backer
        backer.back_project(self) if !backer.backed_projects.include?(self)
    end

end # end of the Project class