<!-- Vue component -->
<template>
  <div>
    <multiselect v-model="value" label="name" @input="onSelect(value)"  :options="options" track-by="id"  :multiple="true"></multiselect>
  </div>
</template>

<script>




  export default {
    // OR register locally
    name:'Search',
    data () {
      return {
        value: [],
        options: []
      }
    },
    methods: {
    getBrands: function() {
            axios.get('api/brands')
            .then(response => (this.options = response.data))
            .catch(err => console.log(err));
        },
                        onSelect(value) {
                            this.$emit('change', value);
                    axios.get('api/brands/brand/'+value[0].id)
                            .then(response => (this.filtered_cars_by_brand = response.data))
                            .catch(err => console.log(err));
                },
    },
    created(){
        this.getBrands();
    }
  }
</script>

<!-- New step!
     Add Multiselect CSS. Can be added as a static asset or inside a component. -->
<style src="vue-multiselect/dist/vue-multiselect.min.css"></style>

<style>

</style>
