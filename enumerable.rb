module MyEnumerable
    def all?(&block)
      result = true
      each { |item| result = false unless block.call(item) }
      result
    end