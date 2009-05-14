require 'test_helper'

class SectionTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "should validates_presence_of :nome" do
    c = Section.new
    assert(!c.valid?, "Seção não valida")
    assert(c.errors.on(:nome).include?(I18n.translate(:empty, :scope => 'activerecord.errors.messages')), "")
  end
  test "should validates_presence_of :ramal" do
    c = Section.new
    assert(!c.valid?, "Ramal não valido")
    assert(c.errors.on(:ramal).include?(I18n.translate(:empty, :scope => 'activerecord.errors.messages')), "")
  end
  test "should validates_presence_of :nome" do
    c = Section.new
    assert(!c.valid?, "Bloco não valido")
    assert(c.errors.on(:bloco).include?(I18n.translate(:empty, :scope => 'activerecord.errors.messages')), "")
  end
  test "should validates_presence_of :nome" do
    c = Section.new
    assert(!c.valid?, "Andar não valido")
    assert(c.errors.on(:andar).include?(I18n.translate(:empty, :scope => 'activerecord.errors.messages')), "")
  end
end

