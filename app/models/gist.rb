class Gist < ApplicationRecord
  belongs_to :question

  def character_limit
    question.body[1..25]
  end

  def html_url
    "https://gist.github.com/#{gist_remote_id}"
  end
end
