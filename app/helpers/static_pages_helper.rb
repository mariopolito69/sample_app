module StaticPagesHelper

  # Returns the full title on a per-page basis.
  def fullTitle(page_title = '')
    base_title = "tette"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
