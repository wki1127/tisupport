require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "should validates_presence_of :nome" do
    c = Category.new
    assert(!c.valid?, "Categoria não valida")
    assert(c.errors.on(:nome).include?(I18n.translate(:empty, :scope => 'activerecord.errors.messages')), "")
  end
end

