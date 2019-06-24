class Acessors_Private
  def call_private
    bar
  end

  private

  def bar
    puts 'Private method here'
  end
end

private_acessor = Acessors_Private.new
private_acessor.call_private
private_acessor.bar

class Acessor_Protected
  def call_protected(instance)
    #Método protected também funciona com self
    instance.bar
  end

  protected

  def bar
    puts 'Protected method here'
  end
end

instance_1 = Acessor_protected.new
instance_1.call_protected(instance_2)

instance_2 = Acessor_protected.new
instance_2.call_protected(instance_1)