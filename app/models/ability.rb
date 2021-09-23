# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, :all if user.admin?

    if user.user?
      can :read, :inventory
    end
  end
end
