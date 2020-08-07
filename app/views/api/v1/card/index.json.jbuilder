json.data @cards do |card|
    json.id card.id
    json.title card.title
    json.description card.description
    json.user_id card.user_id
    json.votes card.votes
    json.comments card.comments
end
