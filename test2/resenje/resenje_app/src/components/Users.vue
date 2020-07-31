<template>
    <table class="table">
        <thead>
        <tr>
        <th scope="col">#</th>
        <th scope="col">First</th>
        <th scope="col">Last</th>
        <th scope="col">Email</th>
        </tr>
    </thead>
    <tbody v-bind:key="user.id" v-for="user in users">
        <tr>
            <td>{{user.name}}</td>
            <td>{{user.username}}</td>
            <td>{{user.email}}</td>
            <td><router-link :to='/show/ + user.id' tag="button" class="btn btn-success">Show</router-link></td>
        </tr>

    </tbody>
    </table>
</template>

<script>

//import User from './User.vue'
export default {
        name: 'Users',
        components: {
          //  User
        },
        props: ['users'],
        methods:{

        }        
}
</script>