module MyEnumerable
  def all?
    condition = true
    each { |x| condition = false unless yield(x) }
    condition
  end

  def any?
    condition = false
    each { |x| condition = true if yield(x) }
    condition
  end

  def filter
    list = []
    each { |x| list << x if yield(x) }
    list
  end
end
