class ApplicationController < ActionController::Base

  before_action :set_locale

  def set_locale
    I18n.locale = params[:locale]
  end

  def default_url_options(options = {})
    { :locale => I18n.locale }.merge options
  end

  def extract_locale_from_tld
    parsed_locale = request.subdomains.first
    I18n.available_locales.map(&:to_s).include?(parsed_locale) ?      
    parsed_locale : nil
  end
end
