module FFaker
  module Church
    extend ModuleUtils
    extend self

    def job_title
      case rand(3)
        when 0 then "#{level} #{descriptor} #{job}"
        when 1 then "#{descriptor} #{job}"
        when 2 then "#{level} #{job}"
      end
    end

    private
    def level
      LEVELS.sample
    end

    def descriptor
      DESCRIPTORS.sample
    end

    def job
      JOBS.sample
    end

    LEVELS = k %w[Senior Campus Central Internal Associate Executive] unless const_defined? :LEVELS
    DESCRIPTORS = k %w[Administrative Children's Connections Creative Facilities High\ School Middle\ School Ministry Operations Preschool Small\ Groups Spiritual\ Formation Worship Youth] unless const_defined? :DESCRIPTORS
    JOBS = k %w[Assistant Director Intern Leader Minister Pastor] unless const_defined? :JOBS

  end
end
