class UserPolicy < ApplicationPolicy

  def index?
    true
  end

  def create?

  end

  def show?
    return true if user.present? && (user.id == record.id or user.has_role? :admin)
  end

  def update?
    return true
  end

  def destroy?
    return true
  end

end
