<template>
  <div class="record">
         <nav class="navbar navbar-expand-lg  navbar-light bg-light  ">
              <div class="container-fluid">
                
                <button
                  class="navbar-toggler"
                  type="button"
                  data-mdb-toggle="collapse"
                  data-mdb-target="#navbarNav"
                  aria-controls="navbarNav"
                  aria-expanded="false"
                  aria-label="Toggle navigation"
                >
                  <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                  <ul class="navbar-nav">
                   
                    <li class="nav-item">
                      <router-link class="nav-link" class-active="active" to="/getEstate">Get Estate</router-link>
                    </li>
                    <li class="nav-item">
                      <router-link class="nav-link" class-active="active" to="/registerEstate">Register Estate</router-link>
                    </li>
                    <li class="nav-item">
                      <router-link class="nav-link" class-active="active" to="/transferEstate">Transfer Estate</router-link>
                    </li>
          
                    <li class="nav-item">
                      <router-link class="nav-link" class-active="active" to="/findEstateId">ID of Estate</router-link>
                    </li>
                  </ul>
                </div>
              </div>
            </nav>
  </div>
</template>

<script>
export default {

}
</script>

<style>
.record{
    width: 80%;
    margin-left: 10%;
    margin-top:16px ;    
}
.nav-item{
  color: black;
	font-size: 15px;
	height: auto;
	padding: 0 15px;

}


</style>