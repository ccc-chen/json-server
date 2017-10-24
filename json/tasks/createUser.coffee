import createUser from '../Services/createUser'
import getUser from '../Services/getUser'
import dd from 'ddeyes'

export default createUserDemo = ->
  data =
    name: '赵四'
    location: '北京'

  for i in [1..4]
    createUser data
  # [1..4].map

    getUser()
  
    .then (data) ->
      console.log data

    .catch (error) ->
      console.log error  