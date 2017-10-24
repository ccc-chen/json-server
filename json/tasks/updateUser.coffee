import updateUser from '../Services/updateUser'
import getUser from './getUser'
import dd from 'ddeyes'

export default updateUserDemo = ->
  data = 
    name: '王六'
    loacation: '湖南'
  getUser()
  
  .then (id) ->
    newids = id.slice 0,2
    newids.map (id) ->

      updateUser id,data
      .then (isDone) ->
        dd isDone
      .catch (e) ->
        dd e

  getUser()      

  .then (data) ->
  , data

  .catch (error) ->
    console.log error 
