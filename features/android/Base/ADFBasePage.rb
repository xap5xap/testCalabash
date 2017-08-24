require 'calabash-android/abase'

# A base class for all of the different pages within the app
# Contains helper methods for convenience
class ADFBasePage < Calabash::ABase

  # Returns the current title of the toolbar
  def get_toolbar_title(name)
    "AppCompatTextView id:'toolbar_title' text:'#{name}'"
  end

  # Waits and checks to see if a specific element with an id exists within the view
  def check_if_id_exists(id)
    wait_for_element_exists("* id:'#{id}'")
  end

  # waits and checks if a specific element containing a specific test is within the view
  def check_if_id_contains_text(id, text)
    wait_for_element_exists("* id:'#{id}' {text CONTAINS[c] '#{text}'}")
  end

end