module Authentication
  extend ActiveSupport::Concern

  included do
    before_action :authenticate_user!, if: :requires_authentication?

    private

    def requires_authentication?
      true
    end
  end
end

