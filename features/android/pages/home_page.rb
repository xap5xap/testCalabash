class HomePage < ADFBasePage
  # Ensures that the page is present by checking if it's title is displayed
  def trait
    get_toolbar_title('Kowalas')
  end

  def assert_info_viewable
    %w(homepage_headline homepage_subheadline).each do |value|
      check_if_id_exists(value)
    end
  end
end
