class Tweet < ApplicationRecord
    include PgSearch::Model

    Pagy::DEFAULT[:items] = 10

    pg_search_scope :search_full_text, against: {
        username: 'A',
        description: 'B',
    }

end
