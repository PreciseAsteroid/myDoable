# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

# Doable

Small Rails app for tracking projects and todos.

## Prerequisites
- Ruby (check with `ruby -v`)
- Bundler (`gem install bundler`)
- A database (check `config/database.yml` for the adapter used)
- Git
- Foreman or Overmind (recommended for running multiple dev processes)
- Tailwind (configured via `tailwindcss-rails`; no separate Node build step required unless you changed setup)

## Quick setup
From your machine:

```bash
git clone <repo-url>
cd doable
bundle install
```

If the repository provides `bin/setup`, run it (recommended):

```bash
bin/setup
```

If there is no setup script, create and migrate the DB and optionally seed:

```bash
bin/rails db:create db:migrate db:seed
```

## Running in development

- Run Rails server (web only):

```bash
bin/rails server
# or to force a port:
bin/rails server -p 3000
```

- Run web + Tailwind watcher together (from your app root — runs both processes):

```bash
foreman start -f Procfile.dev
```

- Alternative with Overmind:

```bash
overmind s -f Procfile.dev
```

- Run a single Procfile process:

```bash
foreman start -f Procfile.dev web
foreman start -f Procfile.dev css
```

- Run the Tailwind watcher directly:

```bash
bin/rails tailwindcss:watch
```

Notes:
- Foreman/Overmind set PORT environment variables; Rails will pick that up unless overridden.
- The Procfile.dev for this app defines:
  - web: bin/rails server
  - css: bin/rails tailwindcss:watch

## Tests

```bash
bin/rails test
```

## Useful commands

```bash
bin/rails routes       # show routes
bin/rails console      # open rails console
bin/rails db:reset     # drop, create, migrate, and seed (destructive)
```

## Troubleshooting

- undefined local variable or method `root_path`
  - Ensure you have a root route in `config/routes.rb`, for example:

```ruby
root "projects#index"
```

- Git push failing due to workflow permission errors
  - Create a personal access token with appropriate workflow/repo permissions or use SSH keys, then push again.

## Deployment
- This README does not include a deployment guide. Adjust CI/workflow credentials and environment variables before
