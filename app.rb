require_relative "./cookbook"
require_relative "./controller"
require_relative "./router"
require "pry-byebug"

# Initialize the CSV file
csv_file = File.join(__dir__, "recipes.csv")
# Create cookbook w/ csv
cookbook = Cookbook.new(csv_file)
# Create controller w/ cookbook
controller = Controller.new(cookbook)

# Create router w/ controller
router = Router.new(controller)
router.run
