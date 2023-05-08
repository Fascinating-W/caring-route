<!--
 * @Author: Wanko
 * @Date: 2023-04-27 17:39:09
 * @LastEditors: Wanko
 * @LastEditTime: 2023-05-08 19:42:46
 * @Description: 
-->
<template>
  <view class="bg-f8 h-screen overflow-hidden">
    <view class="m">
      <button class="bg-purple-light" @click="toRoute('/pages/index/two')">
        route('/pages/index/two')
      </button>
    </view>
    <view class="m">
      <button class="bg-purple-light" @click="toRoute1('/pages/index/two')">
        route.to('/pages/index/two')
      </button>
    </view>
    <view class="m">
      <button class="bg-purple-light" @click="toRoute2('/pages/index/three')">
        route.direct('/pages/index/three')
      </button>
    </view>
    <view class="m">
      <button class="bg-purple-light" @click="toRoute3('/pages/index/three')">
        route.launch('/pages/index/three')
      </button>
    </view>
    <view class="m">
      <button class="bg-purple-light" @click="toRoute4('/pages/index/four')">
        route('/pages/index/four', {event}) 监听事件
      </button>
    </view>
  </view>
</template>
<script>
import route from '@/caring-route/dist/index.js'
export default {
  methods: {
    // route(url)
    toRoute(url) {
      route(url).then((_) => {
        console.log('跳转成功')
      })
    },
    // route.to(url)
    toRoute1(url) {
      route.to(url, {
        name: 'wanko',
        age: 25,
        hoby: {
          guitar: {
            level: 1
          }
        }
      })
    },
    toRoute2(url) {
      route.direct(url)
    },
    toRoute3(url) {
      route.launch(url)
    },
    toRoute4(url) {
      route({
        type: 'navigateTo',
        url,
        events: {
          onSuccess: (data) => {
            console.log('onSuccess', data)
          }
        }
      })
    }
  }
}
</script>
