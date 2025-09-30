# DoMax.lt - Personal Portfolio & Blog

A modern Jekyll-powered website built with Bookshop components and featuring real Jekyll pagination. This is the source code for [domax.lt](https://domax.lt), showcasing projects, blog posts, and professional information for Domas Leščinskas.

## Demo

The live site is available at [domax.lt](https://domax.lt)!

## Project Philosophy

DoMax.lt embraces the "own your tools" philosophy. Instead of relying on heavyweight CMS platforms or third-party hosting services that might change terms or disappear, this project uses:

- **Static Site Generation** - Fast, secure, and reliable Jekyll-based architecture
- **Component-Based Design** - Modular Bookshop components for maintainable development
- **Docker Deployment** - Containerized deployment with nginx for production-ready hosting
- **Complete Control** - Full ownership of content, design, and deployment

This isn't just a website - it's a template for building professional portfolio sites that you control completely.

## Key Features

### Modern Jekyll Architecture
- **Jekyll 4.3.3** with modern Ruby practices
- **Bookshop Components** for modular, reusable design elements
- **Real Jekyll Pagination** using jekyll-paginate-v2 for `/blog/page/x` URLs
- **SCSS Styling** with component-scoped styles
- **Responsive Design** that works across all devices

### Content Management
- **Projects Showcase** with detailed project pages and summaries
- **Blog System** with tagging, pagination, and rich content support
- **Testimonials** integration for social proof, though not enabled yet in the official website
- **Contact Forms** and newsletter signup functionality
- **SEO Optimization** with proper meta tags and sitemap generation

### Development Experience
- **Component-Based Architecture** with Bookshop for rapid development
- **Multi-Stage Docker Build** for optimized production deployment

### Deployment & Performance
- **Docker Ready** with nginx serving optimized static files
- **Multi-Stage Build** separating Ruby, and nginx stages

## Quick Start

### Prerequisites
- **Docker & Docker Compose** (recommended)
- **Ruby 3.4+ with Bundler 2.6.9** (for local development)

### Docker Deployment (Recommended)

1. **Clone the repository**:
```bash
git clone https://github.com/domasles/domax-lt.git
cd domax-lt
```

2. **Build and run with Docker Compose**:
```bash
# Build and start the site
docker compose up --build

# Or run in background
docker compose up --build -d
```

3. **Access the site**:
- Visit `http://localhost:80` to view the site
- The site will be served by nginx with production optimizations

### Local Development

#### Setup
```bash
# Install Ruby dependencies
bundle install
```

### Build Options
```bash
# Docker builds
docker compose build website

# Local Jekyll build
BUNDLE_GEMFILE=site/Gemfile JEKYLL_ENV=production bundle exec jekyll build --source site --destination _site
```

## Daily Development Workflow

### Adding New Content

#### Blog Posts
Create new posts in `site/collections/_posts/`:
```markdown
---
title: "Your Post Title"
date: 2025-09-28 10:00:00 +0300
image: '/images/post-x.jpg'
tags: [tag1, tag2, tag3]
---

Your post content here...
```

#### Projects
Add projects to `site/collections/_projects/`:
```markdown
---
date: 2025-09-28 10:00:00 +0300
title: Project Name
subtitle: Project Type
image: '/images/project-x.jpg'
---

Project description and details...
```

### Component Development
Bookshop components are in `component-library/components/`:
- Each component has `.jekyll.html` for markup and `.scss` for styles
- Components are automatically detected and available in all pages

### Content Structure
```
site/
├── collections/
│   ├── _pages/          # Static pages (about, contact, etc.)
│   ├── _posts/          # Blog posts with pagination
│   ├── _projects/       # Project showcase items
│   └── _testimonials/   # Client testimonials
├── _data/               # Site configuration and navigation
├── _includes/           # Jekyll includes and partials
├── _layouts/            # Page layouts
├── assets/              # Compiled CSS and static assets
└── images/              # Image assets
```

## Project Structure

### Component Architecture
```
component-library/
├── components/
│   ├── blog-card/       # Post preview cards
│   ├── hero/            # Homepage hero section
│   ├── projects-list/   # Project showcase
│   ├── pagination/      # Blog pagination
│   └── ...              # Other reusable components
└── shared/
    ├── jekyll/          # Jekyll-specific includes
    └── styles/          # Global styles and variables
```

### Docker Configuration
```
docker/
├── nginx.conf           # Production nginx configuration
└── entrypoint.sh        # Container startup script
```

The multi-stage Dockerfile:
1. **Ruby stage**: Installs Jekyll dependencies and builds the site
2. **nginx stage**: Serves the static site with optimized configuration

## Configuration

### Jekyll Configuration
Key settings in `site/_config.yml`:
```yaml
# Pagination
pagination:
  enabled: true
  per_page: 6
  permalink: '/blog/page/:num/'
  title: ':title - Page :num'
  sort_field: 'date'
  sort_reverse: true

# Bookshop integration
bookshop_locations:
  - ../component-library

# Collections
collections:
  pages:
    output: true
    permalink: /:title/
  projects:
    output: true
    permalink: /project/:slug
  testimonials:
    output: false
  posts:
    output: true
    permalink: /blog/:slug
```

### Docker Configuration
Environment variables and settings:
- **Port**: Site runs on port 80 by default (for easy http access)
- **nginx**: Optimized for static file serving with proper headers
- **Build**: Multi-stage build for minimal production image size

## Deployment Options

### Production Deployment
```bash
# Build production images
docker compose build
```

## Best Practices of taking DoMax.lt as a template and extending upon its features

### Content Creation
- **Use descriptive filenames** with dates for posts and projects
- **Optimize images** before adding to the images directory
- **Write semantic HTML** in component templates
- **Follow component patterns** established in existing components

### Performance
- **Minimize component complexity** for faster build times
- **Use appropriate image sizes** and formats
- **Cache static assets** through nginx configuration
- **Enable compression** for better loading times

### Development Workflow
1. **Create feature branches** for significant changes
2. **Test locally** before building Docker images
3. **Use component isolation** with Bookshop browser for UI development
4. **Validate markup** and accessibility

## Troubleshooting

### Common Issues

**Docker build issues**:
```bash
# Clean build without cache
docker compose build --no-cache domax-site
```

**Pagination not working**:
- Ensure jekyll-paginate-v2 is installed
- Check that blog index page has `pagination: enabled: true`
- Verify pagination configuration in `_config.yml`

### Performance Tips
- **Use Docker for consistency** across development and production
- **Build specific components** instead of everything when possible
- **Enable parallel builds** where supported
- **Monitor build times** and optimize slow components

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes following existing patterns
4. Test locally and with Docker
5. Submit a pull request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Dependencies & Technology

### Core Technologies
- **[Jekyll 4.3.3](https://jekyllrb.com/)** - Static site generation
- **[Bookshop](https://github.com/CloudCannon/bookshop)** - Component-based Jekyll development
- **[jekyll-paginate-v2](https://github.com/sverrirs/jekyll-paginate-v2)** - Advanced pagination
- **[SCSS](https://sass-lang.com/)** - CSS preprocessing with component scoping

### Build & Deployment
- **[Docker](https://www.docker.com/)** - Containerized deployment
- **[nginx](https://nginx.org/)** - Production web server

### Development Tools
- **[Ruby 3.1](https://www.ruby-lang.org/)** - Jekyll runtime
- **[Bundler](https://bundler.io/)** - Ruby dependency management
- **Modern Build Pipeline** - Multi-stage Docker builds for optimization

**Zero Installation Required**: With Docker, all dependencies are handled automatically.

---

**Built with passion for clean code, modern web development and sharing experience through Open Source. Professional portfolio that you own completely.**

*Ready to showcase your work? Clone, customize, and deploy your own professional presence!*
