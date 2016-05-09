class PlantPolicy
  attr_reader :user, :plant
  def initialize(user,plant)
    # raise Pundit::NotAuthorizedError, "شما باید ابتدا عضوی از گیاهداران باشید" unless user
    @user = user
    @plant = plant
  end


  def new?
    user.admin?
  end

  def edit?
    user.admin?
  end

  def create?
    user.admin?
  end

  def destroy?
    user.admin?
  end

  def update?
    user.admin?
  end

  def find?
    true
  end

  def destroy?
    user.admin?
  end


end
