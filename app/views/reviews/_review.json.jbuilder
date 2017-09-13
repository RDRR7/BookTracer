json.extract! review, :id, :book, :author, :reviewer, :link, :summary, :created_at, :updated_at
json.url review_url(review, format: :json)
