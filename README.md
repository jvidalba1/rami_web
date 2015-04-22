## Deploy to Heroku

###### New machine for deployment

```bash
heroku git:remote -a infinite-tundra-2268
```

Generate new public key:

```bash
ssh-keygen -t rsa
```

Add keys for Heroku:

```bash
heroku keys:add
```

###### Updating application

Execute in the project path:

```bash
git push heroku master
```

After this, run migrations executing:

```bash
heroku run rake db:migrate
```

###### Environments management

Add new environment or remote channel
```bash
heroku create --remote staging
```

The configuration file with all remotes for app
```bash
git config -e
```

Pushing
```bash
git push staging staging:master
heroku ps --remote staging
```
More information in [Heroku Multiple Env](https://devcenter.heroku.com/articles/multiple-environments) 


[Heroku Development Center](https://devcenter.heroku.com/articles/git)
