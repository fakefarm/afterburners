module ApplicationHelper
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.username, class: "gravatar")
  end

  def badge_assignment(user)
    if user.comments_count > user.votes_count && user.comments_count > user.mixes_count
      raw("<h2 class='badge reviewer-badge'>Reviewer</h2>")
    elsif user.mixes_count >= user.comments_count || user.mixes_count >= user.votes_count
      raw("<h2 class='badge mixer-badge'>Mixer</h2>")
    elsif user.votes_count > user.comments_count || user.votes_count > user.mixes_count
      raw("<h2 class='badge promoter-badge'>Promoter</h2>")
    else
      raw("<h2 class='badge consumer-badge'>Consumer</h2>")
    end
  end
end
