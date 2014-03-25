require 'ffaker'
module Faker
  module Church
    extend ModuleUtils
    extend self

    def job_title
      "#{level descriptor job}"
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

    DESCRIPTORS = k ["Youth", "Spiritual Formation", "Children's", "Ministry", "Worship", "Preschool", "Connections", "Small Groups", "High School", "Middle School", "Facilities", "Administrative"] unless const_defined? :DESCRIPTORS
    LEVELS = k %w[Senior Central Internal Associate Executive] unless const_defined? :LEVELS
    JOBS = k %w[Intern Minister Assistant Pastor] unless const_defined? :JOBS
  end
end
