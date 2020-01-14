Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
      :auth0,
      'YOUR_CLIENT_ID',
      'YOUR_CLIENT_SECRET',
      'YOUR_DOMAIN',
      callback_path: '/auth/auth0/callback',
      authorize_params: {
          scope: 'openid email profile'
      }
  )
end
