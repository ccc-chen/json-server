import axios from 'axios'
import source from '../config/config.default'
import dd from 'ddeyes'

export default getUser = ->
  axios
    method: 'GET'
    url: 'http://192.168.0.176:3000/users/'
    headers: source.headers
    dataType: 'json'

  .then (response) ->
    response.data if response.status is 200

  .catch (e) ->
    dd e