class Pokemon
  
  attr_accessor :name, :type, :db, :id, :hp

  def initialize(keywords)

  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end
  
  def self.find(num, db)
    pokemon = db.execute("SELECT * FROM pokemon WHERE id=?", [num])
    new_pokemon = self.new(pokemon)
    new_pokemon.id = pokemon[0][0]
    new_pokemon.name = pokemon[0][1]
    new_pokemon.type = pokemon[0][2]
    new_pokemon.hp = pokemon[0][3]
    return new_pokemon
  end
  
 def alter_hp(hp, db)
    statement = db.prepare("UPDATE pokemon SET hp=? WHERE id=?")
    statement.execute(hp,self.id)
  end
  
  
  
  
  
  
  
end
