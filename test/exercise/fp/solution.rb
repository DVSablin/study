module Exercise
  module Fp
    class << self
      # Обратиться к параметрам фильма можно так:
      # film["name"], film["rating_kinopoisk"], film["rating_imdb"],
      # film["genres"], film["year"], film["access_level"], film["country"]
      def rating(array)
        all_names = array.select { |item| item['country'].to_s.split(',').to_a.length >= 2 && item['rating_kinopoisk'].to_f.positive? }
                         .map { |n| n['rating_kinopoisk'].to_f }
        all_names.reduce(:+) / all_names.length
      end

      def chars_count(films, threshold)
        films.select { |item|  item['rating_kinopoisk'].to_f >= threshold && item['name'].include?('и') }
             .map { |item| item['name'].count('и') }.reduce(:+)
      end
    end
  end
end
