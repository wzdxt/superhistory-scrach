class Settings < Settingslogic
	source "#{Rails.root}/config/application.yml"
	namespace Rails.env

  %w(http_triggers.yml).each do |file_name|
		instance.deep_merge!(Settings.new(Rails.root.join('config', file_name)))
  end

end