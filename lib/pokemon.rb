class Pokemon
  
  attr_accessor :name, :type, :db, :id, :hp

  def initialize(keywords)

  end
  
  def self.save
    db.excute("insert into pokemon (name, type) values (?, ?")
  
  
  
  
  
  
  
end
