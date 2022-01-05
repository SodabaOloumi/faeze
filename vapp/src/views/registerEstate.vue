<template>
<div class="grant">
<navbarRecord />
<div >
  
 <form @submit.prevent="onSubmit">
 
  <br>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">land Owner Ethereum Address</label>
      <input type="text" class="form-control" name="landOwner" id="landOwner" v-model="landOwner" placeholder="Enter landOwner">
    </div>
    <div class="form-group col-md-6">
      <label for="inputCity">land Ower Name</label>
      <input type="text" class="form-control" id="landOwerName" name="landOwerName" v-model="landOwerName" placeholder="Enter land Ower Name">
    </div>
  </div>
  <br>
 
  <div class="form-group">
    <label for="inputAddress">location</label>
    <input type="text" name="location" id="location" v-model="location" class="form-control"  placeholder="location">
  </div>
  <br><br>
  <div class="form-group">
    <label for="inputAddress">cost</label>
    <textarea type="text" class="form-control" id="cost" name="cost" v-model="cost" placeholder="cost"></textarea>
  </div>
  <br>
  <div class="form-group">
    <label for="inputAddress">lengthLand</label>
    <textarea type="text" class="form-control" id="lengthLand" name="lengthLand" v-model="lengthLand" placeholder="Enter lengthLandt"></textarea>
  </div>
  <br><br>
  
  <div class="form-group">
    <label for="inputAddress">widthLand</label>
    <textarea type="text" class="form-control" id="widthLand" name="widthLand" v-model="widthLand" placeholder="widthLand"></textarea>
  </div>
  
  <button type="submit" class="btn btn-dark">register</button>
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
      landOwner: null,
      landOwerName: null,
      location: null,
      cost: null,
      lengthLand: null,
      widthLand: null,
      
    };
  },
   methods: {
     onSubmit() {
      let R = {
   
        landOwner: this.landOwner,
        landOwerName: this.landOwerName,
        location: this.location,
        cost: this.cost,
        lengthLand: this.lengthLand,
        widthLand: this.widthLand,       
        
      };
  
      App.App.registerEstate( R.landOwner , R.landOwerName ,
      R.location ,R.cost ,R.lengthLand ,R.widthLand );
      this. landOwner= null,
      this.landOwerName= null,
      this.location=null,
      this.cost= null,
      this.lengthLand= null,
      this.widthLand=null
     }
   },

}

    
  
</script>

<style>
form{
  width: 80%;
  
  padding-top: 3%;
}
.grant{
    width: 80%;
    margin-left:10% ;
}
</style>