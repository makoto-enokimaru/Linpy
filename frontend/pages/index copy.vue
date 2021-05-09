<template>
  <div class="page-header wrapper">
    <div>
      <h1><a href="index.html"><img class="logo" src="../assets/img/logo.png"></a></h1>
    </div>
    <div>
      <h1 class="title">
        Linpy
      </h1>
      <h2 class="subtitle">
        
      </h2>
      <div class="comp_logintab">
        <Logintab />
      </div>
      <button @click="getSomething">
        タスク取得
      </button>
      <ul v-for=" task in tasks" :key="task.id">
        <li style="text-align: left;">{{ task.title }}</li>
      </ul>
    </div>
  </div>
  
</template>

<script>
import Logintab from '../components/index_logintab'

export default {
  components: {
    Logintab
  },
  data() {
    return {
      tasks: []
    }
  },
  methods: {
    async getSomething() {
      // タスク一覧を取得するための API を叩く
      const response = await this.$axios.$get('http://localhost:5000/api/v1/tasks')
      this.tasks = JSON.parse(response.tasks)
    }
  },
}
</script>

<style>
.page-header wrapper {
  margin: 0 auto;
  min-height: 90vh;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
  background-color: #FAFAD2;
}
.title {
  font-family: 'Source Sans Pro';
  display: block;
  font-weight: 300;
  font-size: 100px;
  color: #35495e;
  letter-spacing: 1px;
}
.subtitle {
  font-weight: 300;
  font-size: 42px;
  color: #526488;
  word-spacing: 5px;
  padding-bottom: 15px;
}
.links {
  padding-top: 15px;
}
.logo {
  width: 210px;
  margin-top: 14px;
}
</style>