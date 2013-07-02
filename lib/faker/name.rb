module Faker
  class Name < Base
    flexible :name

    class << self

      def name
        parse('name.name')
      end

      def first_name; fetch('name.first_name'); end
      def female_name; fetch('name.first_name_female'); end
      def male_name; fetch('name.first_name_male'); end
      def last_name;  fetch('name.last_name'); end
      def prefix;     fetch('name.prefix'); end
      def suffix;     fetch('name.suffix'); end

      # Generate a buzzword-laden job title
      # Wordlist from http://www.bullshitjob.com/title/
      def title; fetch('name.title.descriptor') + ' ' + fetch('name.title.level') + ' ' + fetch('name.title.job'); end

      def birthed_on
        decade = [0, 0, 0, 0, 10, 10, 10, 10, 20, 20, 20, 20, 30, 30, 30, 30, 40, 40, 40, 40, 50, 50, 50, 50, 60, 60, 60, 70, 70, 80, 90].sample
        Date.today - (decade + rand(10)).years - rand(365).days
      end

    end
  end
end
