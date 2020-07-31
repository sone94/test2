<template>
  <div id="app">
    <Nav></Nav>
    <Cars v-if="this.$route.name === 'cars'"></Cars>
    <Car v-if="this.$route.name === 'car'"></Car>
  </div>
</template>

<script>

import Cars from './Cars'
import Car from './Car'
import Nav from './Navbar'

export default {
    name: 'App',
    components: {
      Cars,
      Car,
      Nav
    },
    data(){
      return {
    
      }
    },

  methods: {

      },
    created(){
      console.log(this.$route);
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

