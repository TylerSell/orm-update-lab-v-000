require_relative "../config/environment.rb"

class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  
  attr_accessible :name, :grade
  attr_reader :id 
  
  
  def initialize(id = nil, name, grade)
    @id = id 
    @name = name 
    @grade = grade
  end
  
  def self.create_table
    sql = <<-SQL 
    CRETAE TABLE IF NOT EXISTS students (
    id INTEGER PRIMARY KEY,
    name TEXT,
    grade INTEGER
    )
    SQL
    
    DB[:conn].execute(sql)
  end

end
