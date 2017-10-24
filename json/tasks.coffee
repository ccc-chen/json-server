import 'shelljs/make'
import dd from 'ddeyes'
import createUserDemo from './tasks/createUser'
import deleteUserDemo from './tasks/deleteUser'
import getUserDemo from './tasks/getUser'
import updateUserDemo from './tasks/updateUser'

target.all = ->
  dd 'start'
  createUserDemo()
  updateUserDemo()
  deleteUserDemo()

target.createUserDemo = ->
  createUserDemo()

target.deleteUserDemo = ->
  deleteUserDemo()

target.getUserDemo = ->
  getUserDemo()

target.updateUserDemo = ->
  updateUserDemo()  



