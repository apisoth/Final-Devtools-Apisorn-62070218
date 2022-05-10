<template>
  <div id="app">
    <RegisterVaccine></RegisterVaccine>
    <checking></checking>
  </div>
</template>

<script>
import axios from "axios";
import RegisterVaccine from './components/RegisterVaccine.vue';
import Checking from './components/Checking.vue';
export default {
  components: {
    RegisterVaccine,
    Checking
  },
  data() {
    return {
      students: [],
    };
  },
  mounted() {
    axios.get("http://localhost:5000").then((response) => {
      console.log(response);
      this.students = response.data.rows;
    });
  },
};
</script>

