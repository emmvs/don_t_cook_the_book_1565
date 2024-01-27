require "csv"
require_relative "./recipe"

class Cookbook
  def initialize(csv_file)
    @csv_file = csv_file
    @recipes = []
  end

  def all
    @recipes
  end

  def create(recipe)
  end

  def destroy(recipe_index)
  end

  private

  def load_csv
    CSV.foreach(@csv_file) do |row|
      name = row[0]
      description = row[1]
      @recipes << Recipe.new(name, description)
    end
  end


  def save_csv
    CSV.open(@csv_file, "wb") do |csv|
      csv << ["#{@recipe.name}", "#{@recipe.description}"]
    end
  end
end

# csv_file = File.join(__dir__, "recipes.csv")
# cookbook = Cookbook.new(csv_file)
# p cookbook.load_csv
