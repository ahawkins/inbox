Inbox.Router = Ember.Router.extend
  enableLogging: true
  location: "history"

  root: Ember.Route.extend
    index: Ember.Route.extend
      route: '/'
      connectOutlets: (router, context) ->
        router.get('applicationController').connectOutlet
          outletName: "list"
          name: "messages"
          context: Inbox.store.findAll(Inbox.Message)
        router.get('applicationController').connectOutlet
          outletName: "details"
          name: "message"
        router.get('applicationController').connectOutlet
          outletName: "filters"
          viewClass: Inbox.FiltersView
          controller: "messages"

      showMessage: Ember.Route.transitionTo('showingMessage')

      home: Ember.Route.extend
        route: '/'

      showingMessage: Ember.Route.extend
        route: '/:id'
        connectOutlets: (router, context) ->
          router.get('messageController').set('content', context)
        serialize: (router, context) ->
          id: context.get('id')
        deserialize: (router, urlParams) ->
          Inbox.store.find Inbox.Message, urlParams.id
