class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, Post, user_id: user.id
  end
end
