require_relative 'dsl'

Dsl.create_stack do
    push 8
    push 3
    push 22
    pop
    push 100
    add
    sub
end