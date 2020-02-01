module ApplicationHelper

  def title text
    content_for(:title) { text }
  end

  def meta_tag tags, text
    content_for :"meta_#{tags}", text 
  end

  def yield_meta_tag tags, default_text='' 
    content_for?(:"meta_#{tags}") ? content_for(:"meta_#{tags}") : default_text
  end
end
