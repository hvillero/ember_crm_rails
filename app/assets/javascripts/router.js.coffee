# For more information see: http://emberjs.com/guides/routing/

App.Router.reopen
  location: 'auto'
  rootURL: '/'
  # @resource('posts')

App.Router.map ->
  @resource 'leads', path: '/', ->
    @resource 'lead', path: '/leads/:id', ->
      @route 'edit'
    @route 'new'

App.LeadsRoute = Ember.Route.extend
  model: -> @store.find 'lead'




