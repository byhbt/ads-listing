# frozen_string_literal: true

module DeviseHelper
  # Retain this method for backwards compatibility, deprecated in favor of modifying the
  # devise/shared/error_messages partial.
  def devise_error_messages!
    ActiveSupport::Deprecation.warn <<-DEPRECATION.strip_heredoc
      [Devise] `DeviseHelper#devise_error_messages!` is deprecated and will be
      removed in the next major version.
    DEPRECATION
    return '' if resource.errors.empty?

    render 'devise/shared/error_messages', resource: resource
  end
end
