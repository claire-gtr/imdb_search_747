class Movie < ApplicationRecord
  belongs_to :director
  # include PgSearch::Model
  # pg_search_scope :search_by_title_and_synopsis,
  #   against: [ :title, :synopsis ],
  #   using: {
  #     tsearch: { prefix: true } # <-- now `superman batm` will return something!
  #   }
  # pg_search_scope :search_on_movies_and_directors,
  #   against: [ :title, :synopsis ],
  #   associated_against: {
  #     director: [ :first_name, :last_name ]
  #   },
  #   using: {
  #     tsearch: { prefix: true }
  #   }
  # multisearchable against: [:title, :synopsis]
  searchkick
end
