class DefaultUser
  def image
    Faker::Placeholdit.image("200x200")
  end

  def full_name
    'User Name'
  end

  def title
    'Job Title'
  end

  def description
    'Description of the user\'s job.'
  end

  def twitter_account
    'TwitterSupport'
  end
end
