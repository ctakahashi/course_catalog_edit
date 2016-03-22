class Course < ActiveRecord::Base
  serialize :subjects
  serialize :requirements
  has_many :enrollments, dependent: :destroy


  def self.search(args)
    query = ""
    if !args[:name].nil?
      query += "name LIKE '%#{args[:name]}%'"
    end

    if args[:subject] != "" && !args[:subject].nil?
      if !args[:name].nil?
        query += " AND "
      end
      query += "subjects LIKE '%#{args[:subject]}%'"
      if args[:subject].length < 9
        query += " AND NOT subjects LIKE '%#{args[:subject]}0%'"
      end
    end
    puts query
    return Course.where(query)
  end
end
