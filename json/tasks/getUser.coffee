import getUser from '../Services/getUser'

export default getUserDemo = ->
  getUser()
  
  .then (data) ->
    data.reduce (a,b) ->
      [
        ...a
        b.id
      ]
    , []    
  
  .then (data) ->
     data
      
  .catch (error) ->
    console.log error 
