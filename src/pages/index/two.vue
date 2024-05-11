<!--
 * @Author: Wanko
 * @Date: 2023-04-27 17:39:09
 * @LastEditors: Wanko
 * @LastEditTime: 2023-05-23 16:26:34
 * @Description: 
-->
<template>
  <view class="bg-f8 h-screen overflow-hidden">
    <view class="m">
      <button class="bg-purple-light" @click="toRoute('pages/index/three')">
        route('pages/index/three')
      </button>
    </view>
    <view class="m">
      <button class="bg-purple-light" @click="back('pages/index/three')">
        route.back(),返回上一级
      </button>
    </view>
  </view>
</template>
<script>
// import route from '@/caring-route/src/index.js'
import route from 'caring-route'

export default {
  onLoad(options) {
    const query = route.query(options)
    console.log(query)
  },
  methods: {
    toRoute(url) {
      route(url)
    },
    back() {
      route.back()
    }
  }
}
</script>
