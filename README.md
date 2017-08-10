# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  * 2.4.1

* Rails version
  * 5.1.2

* System dependencies
  * carrierwave
  * Upload
    * Works with dropzone.js well

* References
  * Gem
    * carrierwave
  * Commands
    * yarn add dropzone jquery bootstrap
    * bundle exec rails g scaffold dzone title:string picture:string
  * Files
    * app/models/
      * dzone.rb
    * app/controllers/
      * dzones_controller.rb
        * This file remains default
    * app/views/dzones/
      * _form.html.erb
        * fallback class is useful
    * assets
      * js
      * css

* Database creation
  * MariaDB 10.1

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
