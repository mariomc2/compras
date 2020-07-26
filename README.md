# Compras

	rails new compras

## Bootstrap

Set up Bootstrap with WebPacker

    yarn add bootstrap jquery popper.js

Add the following to config/webpack/environment.js

```
const webpack = require('webpack')

environment.plugins.prepend(
  'Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    jquery: 'jquery',
    Popper: ['popper.js', 'default']
  })
)
```

Create a folder to hold stylesheets, and create one **scss**

    $ mkdir app/javascript/stylesheets/
    $ touch app/javascript/stylesheets/application.scss

Add the following to: app/javascript/stylesheets/application.scss

    @import "~bootstrap/scss/bootstrap";

Add the following to app/javascript/packs/applications.js

    import 'bootstrap'
    import '../stylesheets/application'

---
## simple_form

Add it to the gemfile:

    gem 'simple_form'

Run the generator with Bootstrap:

    rails generate simple_form:install --bootstrap

---
## Github

Create project on Github and add remote

    git remote add origin git@github.com:mariomc2/compras.git

Commit code

    git add .
    git commit -m "Initial commit"

Push to Github

    git push -u origin master

---
## Create Product:

    rails generate scaffold Product title:string description:text image_url:string price:decimal

---
## Create Store Catalog:

    rails generate controller Store index

---
## Create Cart

	rails generate scaffold Cart

---
## Create Order

	rails generate scaffold Order name:string address:text email:string pay_type:integer

---
## Create Line Item

	rails generate scaffold LineItem product:references cart:belongs_to order:belongs_to quantity:integer