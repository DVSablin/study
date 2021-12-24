module Exercise
  module Arrays
    class << self
      def replace(array)
        (0..array.length).each do |n|
          array[n] = array.max if array[n].to_i.positive?
        end
        array
      end

      def search(_array, _query)
        0
      end
    end
  end
end

