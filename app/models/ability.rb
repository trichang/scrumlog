class Ability
  include CanCan::Ability
  
  def initialize(user) 
    if request.subdomain.empty?
      can :manage, :account
    else
      
    end
    if user.account_role == Account::ADMIN
      can :manage, :all 
    #elsif user.account_role == Account::OWNER
    #  can :manage, :all
    else
      can :read, :all
    end
  end
end