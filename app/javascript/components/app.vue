<template>
  <div id="app">
    <h1>{{ message.toLocaleUpperCase() }}</h1>
    <input type="text" v-model="message">
  </div>
</template>

<script>
export default {
  data: function () {
    return {
      message: "Hello Vue!",
      items: [
        'pomme',
        'poire',
        'scoubidou'
      ]
    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
