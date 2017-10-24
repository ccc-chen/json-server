import deleteUser from '../Services/deleteUser'
import getUser from './getUser'
import dd from 'ddeyes'

export default deleteUserDemo = ->
  getUser()

  .then (userIds) ->
    # for id in userIds
    #   deleteUser id
    #   .then ( isDone ) ->
    #     dd isDone
    #   .catch (e) ->
    #     dd e

        # `
    #   function hello () {
    #     console.log('Hello World!!!');
    #   }
    #   hello();

    #   # dd({userIds});
    # `

    userIds.map (id) ->

      deleteUser id
    
  .then ( isAllDeleted ) ->
    if isAllDeleted
      getUser()
      .then (users) ->
        dd users

  .catch (e) ->
    dd e
