<template>
    <div class="header">
        <a href="/"><img class="logo" src="../assets/img/header-logo.png" alt="Linpy Home"></a>
    </div>
</template>

<script>
export default {
    name: "Header",
    data: {
    }
}
</script>

<style scoped>
.header {
    background-color: #FFC55C;
    background-size: cover;
    background-position: center top;
    background-repeat: no-repeat;
    min-height: 10vh;
}

.logo {
    display: flex;
    width: 80px;
    position: absolute;
    left: 20px; 
    vertical-align: middle
}


</style>