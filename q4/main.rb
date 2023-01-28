class Action
  def initialize(type)
    @type = type
  end

  def call
    Action.const_get(@type.capitalize).call rescue nil
  end
end

class Action::Tipo1
  def self.call
    puts 'Executa ação TIPO1'
  end
end

class Action::Tipo2
  def self.call
    puts 'Executa ação TIPO2'
  end
end

class Action::Tipo3
  def self.call
    puts 'Executa ação TIPO3'
  end
end

class Action::Tipo4
  def self.call
    puts 'Executa ação TIPO4'
  end
end

class Action::Tipo5
  def self.call
    puts 'Executa ação TIPO5'
  end
end

class Action::Tipo6
  def self.call
    puts 'Executa ação TIPO6'
  end
end

Action.new('TIPO5').call
Action.new('TIPO2').call
Action.new('TIPO9').call
