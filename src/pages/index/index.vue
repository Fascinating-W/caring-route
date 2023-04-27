<!--
 * @Author: Wanko
 * @Date: 2023-04-27 17:39:09
 * @LastEditors: Wanko
 * @LastEditTime: 2023-04-27 18:01:51
 * @Description: 
-->
<template>
  <view class="bg-f8 h-screen overflow-hidden">
    <view class="m">
      <button class="bg-purple-light" @click="toRoute('/pages/index/two')">route('/pages/index/two')</button>
    </view>
    <view class="m">
      <button class="bg-purple-light" @click="toRoute1('/pages/index/two')">route.to('/pages/index/two')</button>
    </view>
    <view class="m">
      <button class="bg-purple-light" @click="toRoute2('/pages/index/three')">route.direct('/pages/index/three')</button>
    </view>
    <view class="m">
      <button class="bg-purple-light" @click="toRoute3('/pages/index/three')">route.launch('/pages/index/three')</button>
    </view>
    <view class="m">
      <button class="bg-purple-light" @click="toRoute1()">route.to('/pages/index/three')</button>
    </view>
  </view>
</template>
<script>
  import route from '@/caring-route/index.js'
  export default {
    methods: {
      // route(url)
      toRoute(url) {
        route(url)
      },
      // route.to(url)
      toRoute1(url) {
        route.to(url)
      },
      toRoute2(url) {
        route.direct(url)
      },
      toRoute3(url) {
        route.launch(url)
      }

    },
  }
</script>
