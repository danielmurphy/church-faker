module FFaker
  module Church
    extend ModuleUtils
    extend self

    def job_title
      "#{level} #{descriptor} #{job}"
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
    DESCRIPTORS = k %w[Administrative Children's Connections Creative Facilities High\ School Middle\ School Ministry Preschool Small\ Groups Spiritual\ Formation Worship Youth] unless const_defined? :DESCRIPTORS
    JOBS = k %w[Assistant Director Intern Minister Pastor] unless const_defined? :JOBS

  end
end
