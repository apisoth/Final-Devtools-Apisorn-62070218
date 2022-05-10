<template>
  <div>
    <div>
      <img class="logo" src="/assets/logo-nbtc@2x.png" />
      <img class="logo" src="/assets/logo-moph@2x.png" />
      <img class="logo" src="/assets/logo-mot@2x.png" />
      <img class="logo" src="/assets/logo-dtac@2x.png" />
    </div>
    <div>
      <form @submit="check">
        <h1>
          ตรวจสอบคิวอาร์โค้ด <br />
          การลงทะเบียนฉีดวัคซีนโควิด-19
        </h1>
        <h4>กรุณากรอกข้อมูล</h4>
        <h2>หมายเลขบัตร/Document No.</h2>
        <v-text-field
          solo
          placeholder="หมายเลขบัตร"
          v-model="id_no"
        ></v-text-field>
        <h2>หมายเลขโทรศัพท์/Mobile No.</h2>
        <v-text-field
          solo
          placeholder="หมายเลขโทรศัพท์มือถือ"
          v-model="phone_number"
        ></v-text-field>
        <v-btn medium color="primary" dark type="submit"> ค้นหา </v-btn>
      </form>
    </div>
  </div>
</template>
<script>
import axios from "axios";
export default {
  data() {
    return {
      id_no: "",
      phone_number: "",
    };
  },
  methods: {
    check: function (e) {
      e.preventDefault();
      const data = {
        id_no: this.id_no,
        phone_number: this.phone_number,
      };
      axios.post("http://localhost:5000/check", data).then((response) => {
        console.log(response);
      });
    },
  },
};
</script>