class Search::Technique < Search::Base
  ATTRIBUTES = %i(
    purpose1
    purpose2
    purpose3
    purpose4
  )
  attr_accessor(*ATTRIBUTES)

  def matches
    t = ::Technique.arel_table
    results = ::Technique.all
    #results = results.where(contains(t[:categories_id], categories_id)) if categories_id.present?
    #results = results.where("categories_id = 1")# if categories_id.present?
    #results = results.where(t[:categories_id] == categories_id) if categories_id.present?

    ##results = results.where(contains(t[:title], title)) if title.present?

    #results = results.where(contains(t[:text1], text) | contains(t[:text2], text)) if text.present?

    ##results = results.where(t[:categories_id].matches(categories_id)) if categories_id.present?
    ##results
  end
end