import axios from 'axios'
import source from '../config/config.default'

export default deleteUser = (id)->
  axios
    method: 'DELETE'
    url: 'http://192.168.0.176:3000/users/' + id
    dataType: 'json'
    headers: source.headers

  .then (response) ->
    response.data if response.status is 200

  .catch (error) ->
    console.log error