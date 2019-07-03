class Pokemon
  
  attr_accessor :name, :type, :db, :id, :hp

  def initialize(keywords)

  end
  
  def self.save(name, type, db)
    db.excute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end
  
  
  
  
  
  
  
end
