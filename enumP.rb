require_relative './myEnum'

class MyList
    include MyEnumerable
    def initialize(args)
        @list = args
    end

    def each(arg)
        @list.each(arg)

        yield #successive members of @list and uses the MyEnumerable module
    end
end

list = MyList.new(1, 2, 3, 4)

p(list.all? { |item| item < 5 })

p(list.all? { |item| item > 5 })

p(list.any? { |item| item == 2 })

p(list.any? { |item| item == 5 })

p(list.filter(&:even?))