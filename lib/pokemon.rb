class Pokemon
  
  attr_accessor :name, :type, :db, :id, :hp

  def initialize(keywords)

  end
  
  def self.save
    db.excute("INSERT INTO pokemon (name, type) values (?, ?)", name, type)
  end
  
  
  
  
  
  
  
end
