class ArticlePolicy < ApplicationPolicy
  def show?
    user.admin? || record.published?
  end

  def destroy?
    user.admin?
  end

  class Scope < Scope
    def resolve
      user.admin? ? scope.all : scope.published
    end
  end
end
