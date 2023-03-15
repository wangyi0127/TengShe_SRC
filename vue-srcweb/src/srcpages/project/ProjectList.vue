<template>
  <page-layout :avatar="xxx">
    <div slot="headerContent">
      <div class="title">下午好，JACK，休息一会儿吧</div>
      <div>前端工程师 | 蚂蚁金服-计算服务事业群-VUE平台</div>
    </div>
    <template slot="extra">
      <head-info class="split-right" :title="$t('project')" content="56"/>
      <head-info class="split-right" :title="$t('ranking')" content="8/24"/>
      <head-info class="split-right" :title="$t('visit')" content="2,223"/>
    </template>
    <template>
      <div class="card-list">
        <a-list
          :grid="{gutter: 24, lg: 3, md: 2, sm: 1, xs: 1}"
          :dataSource="dataSource"
        >
          <a-list-item slot="renderItem" slot-scope="item">
            <template v-if="item.add">
              <a-button class="new-btn" type="dashed">
                <a-icon type="plus" />新增产品
              </a-button>
            </template>
            <template v-else>
              <a-card :hoverable="true">
                <a-card-meta >
                  <div style="margin-bottom: 3px" slot="title">{{item.title}}</div>
                  <a-avatar class="card-avatar" slot="avatar" :src="item.avatar" size="large" />
                  <div class="meta-content" slot="description">{{item.content}}</div>
                </a-card-meta>
                <a slot="actions">操作一</a>
                <a slot="actions">操作一</a>
              </a-card>
            </template>
          </a-list-item>
        </a-list>
      </div>
    </template>
  </page-layout>
</template>

<script>
import PageLayout from '@/layouts/PageLayout'
import HeadInfo from '@/components/tool/HeadInfo'

const dataSource = []
dataSource.push({
  add: true
})
for (let i = 0; i < 11; i++) {
  dataSource.push({
    title: 'Alipay',
    avatar: 'https://gw.alipayobjects.com/zos/rmsportal/WdGqmHpayyMjiEhcKoVE.png',
    content: '在中台产品的研发过程中，会出现不同的设计规范和实现方式，但其中往往存在很多类似的页面和组件，这些类似的组件会被抽离成一套标准规范。'
  })
}

export default {
  name: 'ProjectList',
  components: {HeadInfo, PageLayout},
  data () {
    return {
      desc: '段落示意：蚂蚁金服务设计平台 ant.design，用最小的工作量，无缝接入蚂蚁金服生态， 提供跨越设计与开发的体验解决方案。',
      linkList: [
        {icon: 'rocket', href: '/#/', title: '快速开始'},
        {icon: 'info-circle-o', href: '/#/', title: '产品简介'},
        {icon: 'file-text', href: '/#/', title: '产品文档'}
      ],
      extraImage: 'https://gw.alipayobjects.com/zos/rmsportal/RzwpdLnhmvDJToTdfDPe.png',
      dataSource
    }
  }
}
</script>

<style lang="less" scoped>
  .card-avatar {
    width: 48px;
    height: 48px;
    border-radius: 48px;
  }
  .new-btn{
    border-radius: 2px;
    width: 100%;
    height: 187px;
  }
  .meta-content{
    position: relative;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    height: 64px;
    -webkit-line-clamp: 3;
    -webkit-box-orient: vertical;
  }

</style>