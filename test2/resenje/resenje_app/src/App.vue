<template>
  <div id="app">
    <img alt="Vue logo" src="./assets/logo.png">
    <Users v-bind:users="users" v-if="$route.path==='/'"/>
    <User v-if="$route.name==='show'" />
  </div>
</template>

<script>
import Users from './components/Users.vue'
import User from './components/User.vue'
import axios from 'axios'

export default {
    name: 'App',
    components: {
      Users,
      User
    },
    data(){
      return {
        users: []
      }
    },

  methods: {
    getUsers: function() {
            axios.get('https://jsonplaceholder.typicode.com/users')
            .then(response => (this.users = response.data))
            .catch(err => console.log(err));
        }
      },
    created(){
        this.getUsers();
    },
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
