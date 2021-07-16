class Project 

    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def self.all
        @@all
    end

    def backers
        backed_returns = ProjectBacker.all.select do |backed|
            backed.project == self
        end
        backed_returns.map do |b|
            b.backer
        end
    end


end