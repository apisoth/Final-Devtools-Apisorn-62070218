<template>
  <div>
    <div>
      <img class="logo" src="/assets/logo-dtac@2x.png" />
    </div>
    <div>
      <img
        class="logo"
        src="/assets/WebBanner-Mobile-768x560-Th_2022-Apr-28.jpg"
      />
    </div>
    <div style="font-size: 30px">
      <h1>ดีแทค เปิดลงทะเบียน รับการฉีดวัคซีนโควิด-19</h1>
    </div>
    <div style="font-size: 20px">เลือกศูนย์ฉีดวัคซีนโควิด -19</div>
    <div>
      <details>
        <summary>เลือก</summary>
        ศูนย์ฉีดวัคซีนกลางบางซื่อ
        <p>สถานีกลางบางซื่อ โดยเข้าทาง ถ.กำแพงเพชร</p>
      </details>
    </div>
    <div>
      <h1>ตรวจสอบการลงทะเบียน / QR Code</h1>
    </div>
    <div>
      <v-btn
              medium
              color="primary"
              dark
            >
              ตรวจสอบ
            </v-btn>
    </div>
  </div>
</template>

<script>
import axios from "axios";
export default {
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

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
