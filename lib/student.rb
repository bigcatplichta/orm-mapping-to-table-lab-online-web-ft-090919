class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]  
  
  attr_accessor :name, :age 
  attr_reader :id 
  @@all = []
  
  def initialize(id=nil, name, age)
    @name = name 
    @age = age 
    @@all << self
  end 
  
  def self.create_table
    sql = <<-SQL 
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY,
        name TEXT,
        age INTEGER 
        );
      SQL 
      
      DB[:conn].execute(sql)
  end 
  
end
