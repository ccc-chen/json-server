import axios from 'axios'
import source from '../config/config.default'
import dd from 'ddeyes'

export default updateUser = (id, data) ->
  axios
    method: 'PUT'
    url: 'http://192.168.0.176:3000/users/' + id
    headers: source.headers
    dataType: 'json'
    data: data

  .then (response) ->
    response.data if response.status is 200

  .catch (e) ->
    dd e