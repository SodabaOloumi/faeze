import Vue from "vue";
import VueRouter from "vue-router";

;
import estate from "../component/estate";
import transferEstate from "../views/transferEstate"

import getEstate from "../views/getEstate"
import findEstateId from "../views/findEstateId"
import registerEstate from "../views/registerEstate"




Vue.use(VueRouter);

const routes = [
  
  {
  path:"/findEstateId",
  name:findEstateId,
  component:findEstateId
  },
  

{
  path:"/registerEstate",
  name:'registerEstate',
  component:registerEstate
},
{
  path:"/estate",
  name:"estate",
  component:estate
},
{
  path:"/transferEstate",
  name:"transferEstate",
  component:transferEstate
},

{
  path:"/getEstate",
  name:"getEstate",
  component:getEstate
},



];

const router = new VueRouter({
  mode: "history",
  base: process.env.BASE_URL,
  routes
});

export default router;
