import Vue from 'vue'
import VueRouter from 'vue-router'
import Users from '../components/Users.vue'
import User from '../components/User.vue'

Vue.use(VueRouter)

  const routes = [
  {
    path: '/',
    name: 'Home',
    component: Users,
  },
  {
    path: '/show/:id',
    name: 'show',
    component:User
  }
]

const router = new VueRouter({
  mode: 'history',
  routes
})

export default router
