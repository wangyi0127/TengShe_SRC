import TabsView from '@/layouts/tabs/TabsView'
import BlankView from '@/layouts/BlankView'
// import PageView from '@/layouts/PageView'

// 路由配置
const options = {
    routes: [{
        path: '/login',
        name: '登录页',
        component: () => import('@/srcpages/login')
      },
      {
        path: '*',
        name: '404',
        component: () => import('@/srcpages/exception/404'),
      },
      {
        path: '/403',
        name: '403',
        component: () => import('@/srcpages/exception/403'),
      },
      {
        path: '500',
        name: '500',
        component: () => import('@/srcpages/exception/500')
      },
      {
      path: '/',
      name: '首页',
      component: TabsView,
      meta: {
        invisible: true
      },
      children: [{
        path: 'dashboard',
        name: 'Dashboard',
        meta: {
          icon: 'dashboard'
        },
        component: BlankView,
        children: [{
          path: 'workplace',
          name: '工作台',
          component: () => import('@/srcpages/dashboard/workplace/WorkPlace'),
        }, {
          path: 'analysis',
          name: '统计分析',
          component: () => import('@/srcpages/dashboard/analysis/Analysis'),
        }]
      },
      {
          path: 'projectlist',
          name: '项目列表',
          meta: {
            icon: 'table'
          },
          component: () => import('@/srcpages/project/ProjectList'),
       }, 
       {
          path: 'leaklibrary',
          name: '漏洞池',
          meta: {
            icon: 'menu'
          },
          component: () => import('@/srcpages/leak/LeakList'),
       },
       {
          path: 'show/leakinfo/:id',
          name: '漏洞详情',
          meta: {
              highlight: '/leaklist/show',
              invisible: true
          },
          component: () => import('@/srcpages/leak/LeakInfo')
        }]
    }]
}

export default options