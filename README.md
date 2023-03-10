# README

This is an example of using the [ankane/setup-postgres@v1](https://github.com/ankane/setup-postgres) action on github workflow, that makes easier to set up PostgreSQL with additional configuration.

By default this action create a db and user called `postgres` but no password.

In this example, my database needs a user and password:

**config/database.yml**:

```yml
 url: <%= ENV["DATABASE_URL"] || "postgres://postgres:postgres@localhost" %>
```

So I need to set a password after this action is executed:

**.github/workflows/ci.yml**:

```yml
  - name: Set DB password
    run: psql -d postgres -c "ALTER USER postgres PASSWORD 'postgres'"
```
