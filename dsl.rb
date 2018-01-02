require_relative 'Stack'

module Dsl
  def self.create_stack(&block)
      stack = Stack.new()
      stack.instance_eval(&block)
  end
end