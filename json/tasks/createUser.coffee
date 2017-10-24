import createUser from '../Services/createUser'
import getUser from '../Services/getUser'
import dd from 'ddeyes'

export default createUserDemo = ->

  for i in [
      name: '赵四'
      location: '北京'
    ,
      name: '张三'
      location: '上海'
    ,
      name: '王五'
      location: '武汉'
    ,
      name: '李二'
      location: '深圳'
  ]
    createUser i
  # [1..4].map

  getUser()
  
  .then (data) ->
    dd data
  .catch (e) ->
    dd e
