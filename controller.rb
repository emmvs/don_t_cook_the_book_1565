require_relative "./cookbook"
require_relative "./view"

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    recipes = @cookbook.all
    @view.display_list(recipes)
  end

  def add
  end

  def remove
  end
end
