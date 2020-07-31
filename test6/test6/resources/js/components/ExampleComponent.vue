<template>
<div class="container">
    <br>
    <h4>Please select the brand of a car, you wish to buy</h4>
	<br>
    <Search @change="getCars"></Search>
	<div class="row" id="ads">
    <!-- Category Card -->
    <div class="col-md-4" v-bind:key="car.id" v-for="car in cars.data">
        <div class="card rounded">
            <div class="card-image">
                <span class="card-notify-badge">{{car.brand.name}}</span>
                <span class="card-notify-year">{{car.product_year}}</span>
                <img class="img-fluid" src="https://imageonthefly.autodatadirect.com/images/?USER=eDealer&PW=edealer872&IMG=USC80HOC011A021001.jpg&width=440&height=262" alt="Alternate Text" />
            </div>
            <div class="card-image-overlay m-auto">
                <span class="card-detail-badge">{{car.name}}</span>
                <span class="card-detail-badge">${{car.price}}</span>
                <router-link :to="'/cars/car/'+car.id" tag="button" class="card-detail-badge viewButton">View Details...</router-link>
            </div>
            <div class="card-body text-center">
                <div class="ad-title m-auto">
                    <h5>Honda Accord LX</h5>
                </div>
                <a class="ad-btn" href="#">View</a>
            </div>
        </div>
    </div>
    <nav aria-label="Page navigation example" style="margin:5px 0 0 15px;">
        <pagination :data="cars" @pagination-change-page="getCars"></pagination>
    </nav>

</div>
</div>
</template>


<script>

import Search from './Search.vue'


export default {
        name: 'Cars',
        components: {
            Search
        },
        data(){
                return {
                    cars: {},
                }
            },
            props :['value'],
            methods: {
                getCars: function(page = 1, brand_array = []) {

                        axios.get('api/brands/brand/'+page+'/'+brand_array)
                        .then(response => (this.cars = response.data))
                        .catch(err => console.log(err));
                    },
                    
                // onChange(value) {

                //     console.log(value);
                //         axios.get('api/brands/brand/'+value)
                //         .then(response => (this.cars = response.data))
                //         .catch(err => console.log(err));
                // },
                },

                created(){
                    this.getCars();
                    console.log(value);
                },
       
}
</script>
<style scoped>

@import url('https://fonts.googleapis.com/css?family=Open+Sans');
@import url('https://fonts.googleapis.com/css?family=Montserrat');

body {
    font-family: 'Montserrat', sans-serif;

}

/* Category Ads */
.viewButton {
    background-color: chartreuse !important;
    color:#FFF !important;
}

#ads {
    margin: 30px 0 30px 0;
   
}

#ads .card-notify-badge {
        position: absolute;
        left: -10px;
        top: -20px;
        background: #f2d900;
        text-align: center;
        border-radius: 30px 30px 30px 30px; 
        color: #000;
        padding: 5px 10px;
        font-size: 14px;

    }

#ads .card-notify-year {
        position: absolute;
        right: -10px;
        top: -20px;
        background: #ff4444;
        border-radius: 50%;
        text-align: center;
        color: #fff;      
        font-size: 14px;      
        width: 50px;
        height: 50px;    
        padding: 15px 0 0 0;
}


#ads .card-detail-badge {      
        background: #f2d900;
        text-align: center;
        border-radius: 30px 30px 30px 30px;
        color: #000;
        padding: 5px 10px;
        font-size: 14px;        
    }

   

#ads .card:hover {
            background: #fff;
            box-shadow: 12px 15px 20px 0px rgba(46,61,73,0.15);
            border-radius: 4px;
            transition: all 0.3s ease;
        }

#ads .card-image-overlay {
        font-size: 20px;
        
    }


#ads .card-image-overlay span {
            display: inline-block;              
        }


#ads .ad-btn {
        text-transform: uppercase;
        width: 150px;
        height: 40px;
        border-radius: 80px;
        font-size: 16px;
        line-height: 35px;
        text-align: center;
        border: 3px solid #e6de08;
        display: block;
        text-decoration: none;
        margin: 20px auto 1px auto;
        color: #000;
        overflow: hidden;        
        position: relative;
        background-color: #e6de08;
    }

#ads .ad-btn:hover {
            background-color: #e6de08;
            color: #1e1717;
            border: 2px solid #e6de08;
            background: transparent;
            transition: all 0.3s ease;
            box-shadow: 12px 15px 20px 0px rgba(46,61,73,0.15);
        }

#ads .ad-title h5 {
        text-transform: uppercase;
        font-size: 18px;
    }
</style>
