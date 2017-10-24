import axios from 'axios'
import source from '../config/config.default'
import dd from 'ddeyes'

export default createUser = (data) ->
  axios
    method: 'POST'
    url: 'http://192.168.0.176:3000/users/'
    headers: source.headers
    dataType: 'json'
    data: data

  .then (response) ->
    response.data if response.stauts is 200

  .catch (e) ->
    dd e