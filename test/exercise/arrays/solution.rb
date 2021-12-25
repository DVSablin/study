module Exercise
  module Arrays
    class << self
      def get_max(array)
        # block for getting max element in array
        max_el = 0
        (0..array.length - 1).each do |item|
          max_el = array[item] if array[item] > max_el
        end
        max_el
      end

      def replace(array)
        max_num = get_max(array)
        (0..array.length - 1).each do |item|
          array[item] = max_num if array[item].positive?
        end
        array
      end

      def search(array, query)
        mid = array.length / 2
        return -1 if array.length.zero? # if array is empty so there is not our query obviously

        if array.length == 1 # base case for exit recursion
          if array[mid] == query
            mid
          else
            -1
          end
        elsif array[mid - 1] < query
          callback_responce = search(array.slice(mid, array.length), query)
          if callback_responce != -1
            mid + callback_responce
          else
            -1
          end
        else
          search(array.slice(0, mid), query)

        end
      end
    end
  end
end
