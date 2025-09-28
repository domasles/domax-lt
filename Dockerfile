# DoMax.lt Jekyll Site Dockerfile
FROM ruby:3.4.6-slim AS jekyll-builder

# Install dependencies
RUN apt-get update
RUN apt-get install -y --no-install-recommends build-essential libffi-dev && rm -rf /var/lib/apt/lists/*

# Set up working directory
WORKDIR /app

# Copy Gemfiles
COPY ./site/Gemfile site/Gemfile
COPY ./site/Gemfile.lock site/Gemfile.lock

# Install Ruby dependencies
RUN BUNDLE_GEMFILE=site/Gemfile bundle install --jobs=4 --retry=3

# Copy project files
COPY . .

# Build the Jekyll site
RUN BUNDLE_GEMFILE=site/Gemfile JEKYLL_ENV=production bundle exec jekyll build --source site --destination /app/_site

# Production stage with Nginx
FROM nginx:1.29.1-alpine

# Copy Jekyll build
COPY --from=jekyll-builder /app/_site /usr/share/nginx/html

# Copy nginx configuration
COPY docker/nginx.conf /etc/nginx/conf.d/default.conf
COPY docker/entrypoint.sh /entrypoint.sh

# Expose the site port
EXPOSE 80

# Make entrypoint script executable
RUN chmod +x /entrypoint.sh

# Run the site
ENTRYPOINT ["/entrypoint.sh"]
