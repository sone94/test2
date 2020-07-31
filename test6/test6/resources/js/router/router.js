import Vue from 'vue'
import Router from 'vue-router'
import Cars from '../components/Cars.vue'
import Car from '../components/Car.vue'

Vue.use(Router)

export default new Router({
    routes: [
        {
            path: '/',
            name: 'cars',
            component: Cars
        },
        {
            path: '/cars/car/:id',
            name: 'car',
            component: Car
        },
    ]
})