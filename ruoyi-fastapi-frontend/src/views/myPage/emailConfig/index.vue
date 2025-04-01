<template>
  <h1>我的邮箱配置页面</h1>
  <el-button type="primary" @click="searchConfig">查询</el-button>
</template>

<script setup>
const searchConfig = ()=>{
  console.log('查询邮箱配置')
}
</script>
