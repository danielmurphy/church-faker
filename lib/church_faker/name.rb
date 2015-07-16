module FFaker
  module Church
    extend ModuleUtils
    extend self

    def name
      case rand(7)
        when 0 then "#{number} Church of #{city}"
        when 1 then "#{number} #{denomination} Church of #{city}"
        when 2 then "#{city} #{denomination}"
        when 3 then "#{city} #{church}"
        when 4 then "#{cheese_name}"
        when 5 then "#{city} #{denomination} #{church}"
        when 6 then "#{city_prefix} #{body_of_water} #{church}"
      end
    end

    private
    def number
      NUMBERS.sample
    end

    def city
      FFaker::Address.city
    end

    def city_prefix
      FFaker::Address.city_prefix
    end

    def cheese_name
      CHEESE_NAMES.sample
    end

    def denomination
      DENOMINATIONS.sample
    end

    def body_of_water
      BODIES_OF_WATER.sample
    end

    def church
      case rand(2)
        when 0 then CHURCH_TYPES.sample
        when 1 then "Church"
      end
    end

    NUMBERS = k %w[First Second Third Last Forty-Second] unless const_defined? :NUMBERS
    CHEESE_NAMES = k %w[Churchopolis Crosspointe Elevate Encounter Insurgence Kinetic Pulse Recreate Reproduce Resurgence StarChurch TheConnectingPoint TheCore Veritas Verve Victory] unless const_defined? :CHEESE_NAMES
    DENOMINATIONS = k %w[Baptist Catholic Charismatic Christian Evangelical Foursquare Lutheran Pentecostal Presbyterian Reformed United] unless const_defined? :DENOMINATIONS
    BODIES_OF_WATER = k %w[Bay Beach Brook Cove Creek Gulf Harbor Lake Lagoon River Sea Sound Spring] unless const_defined? :BODIES_OF_WATER
    CHURCH_TYPES = k %w[Assembly Chapel Christian\ Center Church Fellowship Ministries Parish Tabernacle] unless const_defined? :CHURCH_TYPES
  end
end
