const config = {
  ENV: process.env.APP_ENV || '',
  IS_DEV: process.env.APP_ENV === 'development',
  PORT: parseInt(process.env.PORT || '5555'),
};

export default config;
