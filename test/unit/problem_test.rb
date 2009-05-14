require 'test_helper'

class ProblemTest < ActiveSupport::TestCase
  # Replace this with your real tests.
   test "should validates_presence_of :nome" do
    c = Problem.new
    assert(!c.valid?, "Problema não valido")
    assert(c.errors.on(:nome).include?(I18n.translate(:empty, :scope => 'activerecord.errors.messages')), "")
  end
   test "should validates_presence_of :category" do
    c = Problem.new
    assert(!c.valid?, "Categoria não valida")
    assert(c.errors.on(:category).include?(I18n.translate(:empty, :scope => 'activerecord.errors.messages')), "")
  end
   test "should validates_presence_of :section" do
    c = Problem.new
    assert(!c.valid?, "Seção não valida")
    assert(c.errors.on(:section).include?(I18n.translate(:empty, :scope => 'activerecord.errors.messages')), "")
  end

end

