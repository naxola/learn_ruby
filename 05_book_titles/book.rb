class Book
# write your code here
    attr_reader :title
    def title=(val)
        @title = self.convert(val)
    end
    def convert(val)
        exceptions = ["a", "an", "and", "the", "in", "of"]
        res = val.split(" ").each_with_index.map do |w, i|
            if(exceptions.include?(w) and i != 0)
                w
            else
                w.capitalize
            end
        end
        return res.join(" ")
    end
end
