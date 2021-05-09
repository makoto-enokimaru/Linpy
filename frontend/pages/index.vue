<template>
  <div class="top">
      <div class="top-header">
        <a href="/"><img class="logo" src="../assets/img/logo.png" alt="Linpy Home"></a>
        <ul class="main-nav">
            <li><NuxtLink to="" class="nuxtlink">使い方</NuxtLink></li>
            <li><NuxtLink to="/user/login" class="nuxtlink">ログイン</NuxtLink></li>
            <li><NuxtLink to="/user/register" class="nuxtlink">新規登録</NuxtLink></li>
        </ul>
      </div>
      <div class="top-content">
            <h1>関係値が人を、組織を、ドライブする</h1>
            <h3>組織の関係値向上に寄与するコミュニケーションツール</h3>
            <h3>エンゲージメントを向上し組織の目標達成に貢献</h3>
            <div class="top-input">
                <input class="ef" type="text" placeholder="emailを入力してください">
                <span class="focus_line"></span>
                <input class="button" type="button" value="新規登録" >
            </div>
      </div>
  </div>
</template>

<script>
export default {
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
.top {
    background-color: #FFC55C;
    background-size: cover;
    background-position: center top;
    background-repeat: no-repeat;
    min-height: 70vh;
}
.top-header {
  margin: 0 auto;
  display: flex;
}

.logo {
    display: flex;
    width: 180px;
    position: relative;
    top: 10px;
    left: 20px;
}
.main-nav {
    font-family: 'Source Sans Pro';
    display: flex;
    font-size: 1.25rem;
    margin-top: 34px;
    list-style: none;
    position: relative;
    top: 10px;
    left: 800px;
}

.main-nav li {
    margin-left: 36px;
}
.nuxtlink {
    text-decoration: none;
    color: #8B4513;
}
.nuxtlink:hover {
    color: #0bd;
}

.top-content {
    margin: 10px 0 42px;
    justify-content: center;
    align-items: center;
    text-align: center;
    position: relative;
    top: 100px;
}

.top-content h1{
    font-family: 'Source Sans Pro';
    font-size: 300%;
    text-transform: uppercase;
    font-weight: 1200;
}

.top-content h3{
    font-size: 150%;
    font-family: "游ゴシック",sans-serif;
    text-transform: uppercase;
    font-weight: 1200;
}
.top-input {
	position: relative;
    margin: 60px;
}
.top-input input[type='text'] {
	font: 15px/24px sans-serif;
	box-sizing: border-box;
	width: 30%;
	letter-spacing: 1px;
	padding-left: 1em;
    background-color: aliceblue;
}
.top-input input[type='text']:focus {
	outline: none;
}
.ef {
	padding: 7px 14px;
	border: 1px solid #00ced1;
	background: transparent;
}

.button {
  display: inline-block;
  border-radius: 4px;
  border: 1px solid #00ced1;
  color: #fff;
  text-decoration: none;
  padding: 10px 30px;
  background-color: #00ced1;
}
.button:hover {
  color: #fff;
  background-color: #02b1b4;
}

</style>