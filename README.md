# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version:
    2.6.0

* System dependencies

* Configuration

* Database creation
    Run: rake db:setup

* Database initialization
    Run: rake db:migrate

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Tables:
  1- User
    - user_id:integer (key)*
    - user_name:string
    - user_email:string
    - user_password:string
    - create_date:timestamp
    - update_date:timestamp
  2- Note
    - note_id:integer (key)
    - owner_id:integer *
    - note_title:string
    - note_body:text
    - note_category:integer **
    - create_date:timestamp
    - update_date:timestamp

  3- Categorie
    - category_id:integer (key)**
    - owner_id:integer *
    - name:string
    - description:text
    - create_date:timestamp
    - update_date:timestamp
