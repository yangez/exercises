# http://www.codewars.com/kata/custom-attr-accessor

class SuperFoo

  attr_accessor :data

  def initialize
    @data = {}
  end

  def self.data_accessor(*args)
    args.each do |arg|
      define_method(arg) { @data[name] }
      define_method("#{arg}=") { |val| @data[name] = val }
    end
  end

end

class SubFoo < SuperFoo
  data_accessor :fizz, :pi
end

@sub_foo = SubFoo.new
