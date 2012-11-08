Inbox.store = DS.Store.create
  revision: 7,
  adapter: DS.FixtureAdapter.create
    simulateRemoteResponse: true
    latency: 100

    # patch to correctly call store.didUpdateAll(type)
    findAll: (store, type) ->
      fixtures = @fixturesForType(type)

      Ember.assert("Unable to find fixtures for model type #{type}", !!fixtures)

      @simulateRemoteCall(->
        store.loadMany(type, fixtures)
        store.didUpdateAll(type)
      , store, type)
