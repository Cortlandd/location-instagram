require "instagram"

Instagram.configure do |config|
	config.client_id = "84795f1fcefd43c9b1f44e937f035ba3"
	config.access_token = "1615794409.84795f1.4fb516b7372a4664bd7b18d052968231"
end

CALLBACK_URL = "http://localhost:3000/oauth/callback"
SCOPE = "likes+comments+relationships"

