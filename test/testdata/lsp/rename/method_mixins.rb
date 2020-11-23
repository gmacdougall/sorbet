# typed: true
# frozen_string_literal: true

module Base
end

module BaseWithMethod
  include Base
  def foo

  end
end

module OtherModuleWithMethod
  def foo(i)

  end
end

class A
  include BaseWithMethod
  def foo

  end
end

class B
  include BaseWithMethod
end

class C
  include Base
  def foo

  end
end

class D < C
end

class E
  include BaseWithMethod
  include OtherModuleWithMethod
end

A.new.foo
B.new.foo
D.new.foo
E.new.foo(1)
#     ^ apply-rename: [E] newName: bar
