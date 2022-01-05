<template>
<div class="grant">
<navbarRecord />
<div >
  
 <form @submit.prevent="onSubmit" >
  <div class="form-group">
    <label for="exampleInputEmail1">Buyer Address</label>
    <input type="text" class="form-control" id="buyer" name="buyer" v-model="buyer" aria-describedby="emailHelp" placeholder="Enter buyer Address">
  </div>
 <div class="form-group">
  
    <label for="exampleInputEmail1">Seller Address</label>
    <input type="text" class="form-control" id="seller" name="seller" v-model="seller" aria-describedby="emailHelp" placeholder="Enter seller Address ">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Estate Id</label>
    <input type="text" class="form-control" id="id" name="id" v-model="id" aria-describedby="emailHelp" placeholder="Enter Estate ID">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Seller Name</label>
    <input type="text" class="form-control" id="id" name="name" v-model="name" aria-describedby="emailHelp" placeholder="Enter buyer Name">
  </div>
  <button type="submit" class="btn btn-dark"> Transfer Estate</button>
</form>
</div>
</div>
</template>

<script>
import navbarRecord from "../component/estate";

import App from "../index";
export default {
components:{
    navbarRecord:navbarRecord,
  },
   data() {
    return {
      buyer: null,
      seller: null,
      id:null,
      name:null,
    };
  },
   methods: {
    onSubmit() {
      let p = {
          buyer: this.buyer,
          seller: this.seller,
          id:this.id,
          name:this.name,
        
        
      };
  
      App.App.transferEstate(p.buyer, p.seller , p.id , p.name);
     
      
      this.buyer = null;
      this.seller = null;
      this.id=null;
      this.name;
      
    }
  },
}
</script>

<style>
form{
  width: 80%;
  margin-left:10% ;
  padding-top: 3%;
}
.grant{
    width: 80%;
    margin-left:10% ;
}
</style>