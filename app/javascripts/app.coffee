# This is your main javascript file. You can use write your entire application
# in this file if you like. Files are compiled into minispade modules
# based on the file name. All JS files inside "app/javascripts" are
# automatically prefixed with your application name. You can require
# this file like so:
#
#   require('inbox/app')
#
# This file makes all the code available. Your app is initialized in the
# boot file. Here's an example
#
#   require('models')
#   require('views')
#   require('controllers')
#   require('helpers')
#
# Your application begins here...

Inbox = Ember.Application.create
  autoinit: false

window.Inbox = Inbox

require 'inbox/router'

require 'inbox/store'

require 'inbox/models/message'

require 'inbox/controllers/application_controller'
require 'inbox/controllers/messages_controller'
require 'inbox/controllers/message_controller'

require 'inbox/views/application_view'
require 'inbox/views/messages_view'
require 'inbox/views/message_view'

require 'inbox/fixtures'
