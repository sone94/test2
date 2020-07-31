<template>
    <div>
         <div class="card">
            <h1>{{user[0].name}}</h1>
            <p class="title">{{user[0].username}}</p>
            <p>{{user[0].email}}</p>
            <p>Addres: {{user[0].address.street}} {{user[0].address.suite}}, {{user[0].address.zipcode}} {{user[0].address.city}}</p>
            <p>Geo: lat:{{user[0].address.geo.lat}}, lng:{{user[0].address.geo.lng}} </p>
            <p>Phone: {{user[0].phone}}</p>
            <p>Web site: <a :href="user[0].website" >{{user[0].website}}</a></p>
            <p>Company:</p>
            <p>Name: {{user[0].company.name}}</p>
            <p>Catch phrase {{user[0].company.catchPhrase}}</p>
            <p>Bs: {{user[0].company.bs}}</p>
        </div> 
    </div>
</template>

<script>

import axios from 'axios'

export default {
    
    name:'User',
    data(){
      return {
        user: []
      }
    },
    methods: {
            getUser: function() {
            axios.get('https://jsonplaceholder.typicode.com/users?id='+this.$route.params.id)
            .then(response => (this.user = response.data))
            .catch(err => console.log(err));
        }
      },
    created(){
        this.getUser();
        console.log(this.$route.params.id);
    }
    
}
</script>