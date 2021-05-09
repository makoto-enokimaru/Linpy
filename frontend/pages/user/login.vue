<template>
  <div>
    <div>
      <Header />
    </div>
    <div class="login-wrap">
      <div class="login-form">
        <form @submit.prevent="login">
          <h1>ログイン</h1>
          <p class="error" v-if="error">{{ error }}</p>
          <p><input type="text" v-model="email" placeholder="email" name="email"/></p>
          <p><input type="text" v-model="password" placeholder="password" name="password"/></p>
          <button type="submit" class="login-btn">ログイン</button>
          <div class="to-register">
            <p>はじめてのご利用の方はこちら</p>
            <NuxtLink to="">新規登録</NuxtLink>
          </div>
        </form>
      </div>
    </div>
  </div>
</template>

<script>
  import Header from '~/components/header.vue'
  export default {
    components: {
      Header
    },
    data() {
      return {
        error: null,
        email: "",
        password: "",
      }
    },
    methods: {
      async login() {
        try {
          await this.$store.dispatch("login", {
            email: this.email,
            password: this.password
          })
          this.$router.push("/")
        } catch(e) {
          this.error = e.message
        }
      }
    }
  }
</script>

<style scoped>

.login-wrap {
  background-color: #FFFACD;
  background-repeat: no-repeat;
  min-height: 90vh;
  margin: 0 auto;
  display: flex;
}
.align {
  display: grid;
  place-items: center;
}
.login-form {
  background:#fff;
  border-radius:6px;
  padding:20px;
  padding-top:30px;
  width:600px;
  height: 500px;
  margin: 100px auto;
  box-shadow:15px 15px 0px rgba(0,0,0,.1);
  position: relative;
}

h1 {
  text-align:center;
  font-size:1.4em;
  font-weight:700;
  color:#ccc;
  margin-top:10px;
  margin-bottom:50px;
  color: black;
  font-size: 30px;
}

input {
  width:100%;
  background:#f5f5f5;
  border:0;
  padding:20px;
  border-radius:6px;
  margin-bottom:15px;
  border:1px solid #eee;
}

.login-btn {
  position:relative;
  width:100%;
  padding:20px;
  border-radius:6px;
  border:0;
  background:#00ced1;
  font-size:1.2em;
  color:#fff;
  text-shadow:1px 1px 0px rgba(0,0,0,.1);
  margin-top: 40px;
}

.login-btn:active {
  top:3px;
  box-shadow:none;
}

.to-register {
  display: flex;
  position: absolute;
  bottom: 2em;
  margin: 0 auto;
  text-align: center;
}
.to-register p {
  margin-left: 80px;
  margin-right: 20px;
}


</style>