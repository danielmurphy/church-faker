require 'ffaker'
module Faker
  module Church
    extend ModuleUtils
    extend self

    def name
      case rand(5)
      when 0 then "#{number} Church of #{city}"
      when 1 then "#{number} #{denomination} Church of #{city}"
      when 2 then "#{city} #{denomination}"
      when 3 then "#{city} Church"
      when 4 then "#{cheese_name}"
      end
    end

    private
    def number
      NUMBERS.sample
    end

    def city
      Faker::Address.city
    end

    def cheese_name
      CHEESE_NAMES.sample
    end

    def denomination
      DENOMINATIONS.sample
    end

    NUMBERS = k %w[First Second Third Last Forty-Second] unless const_defined? :NUMBERS
    CHEESE_NAMES = k %w[Elevate Crosspointe Recreate Encounter Kinetic Pulse Resurgence TheCore StarChurch Churchopolis Reproduce Verve Insurgence TheConnectingPoint] unless const_defined? :CHEESE_NAMES
    DENOMINATIONS = k %w[Evangelical Christian Pentecostal Lutheran Catholic Reformed Presbyterian Baptist Charismatic United] unless const_defined? :DENOMINATIONS
  end
end
