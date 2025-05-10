@Entry
@Component
struct Details {
  build() {
    Stack() {

      Column() {
        Row() {
          Image($r('sys.media.ohos_ic_public_arrow_left')).width(24).aspectRatio(1)
          Text('题目详情').width(80).height(28)
          Image($r('app.media.ic_share')).width(24).aspectRatio(1)
        }.justifyContent(FlexAlign.SpaceBetween).height(56).padding(16).width('100%')

        Column({ space: 10 }) {
          Column({ space: 7 }) {
            Text('Vue的最大的优势是什么？').fontSize(12).width('100%')

            Row() {
              Row({ space: 5 }) {
                Text('简单')
                  .width(33)
                  .height(18)
                  .fontSize(8)
                  .backgroundColor('#4027AE60')
                  .fontColor('#27AE60')
                  .textAlign(TextAlign.Center)
                Text('VUE')
                  .width(33)
                  .height(18)
                  .fontSize(8)
                  .backgroundColor('#EDF2FF')
                  .fontColor('#27AE60')
                  .textAlign(TextAlign.Center)
              }

              Image($r('app.media.ic_more')).width(17).aspectRatio(1)
            }.justifyContent(FlexAlign.SpaceBetween).width('100%')

          }
        }
        .height(78)
        .width('100%')
        .padding(15)
        .alignItems(HorizontalAlign.Start)

        Divider().strokeWidth(8).backgroundColor('#FFF6F7F9')

        Text('答案：').fontSize(14).width('100%').padding(15)
        Text('一、vue作为一款轻量级框架，门槛低，上手快，简单易学。\n' +
          '\n' +
          '二、vue可以进行组件化开发，数据与结构相分离，使代码量减少，从而提升开发效率，易于理解\n' +
          '\n' +
          '三、vue最突出的优势在于对数据进行双向绑定，使用虚拟DOM\n' +
          '\n' +
          '四、相较于传统页面通过超链接实现页面跳转，vue会使用路由跳转不会刷新页面\n' +
          '\n' +
          '五、vue是单页面应用，页面局部刷新，不用每次跳转都请求数据，加快了访问速度，提升了用户体验\n')
          .fontSize(14)
          .width('100%')
          .padding({ left: 15, right: 15 })

        Row({ space: 5 }) {
          Image($r('app.media.Frame')).width(14).aspectRatio(1)
          Text('有问题？点我反馈').fontColor('#FF687FB9').fontSize(14)
        }.width('100%').justifyContent(FlexAlign.Start).padding({ left: 15, right: 15 }).margin({ top: 20 })

        Row() {
          Image($r('app.media.Group33423')).width(75).height(21)
          Image($r('app.media.Group33424')).width(75).height(21)
        }.width('100%').padding({ left: 50, right: 50 }).justifyContent(FlexAlign.SpaceBetween).position({ bottom: 15 })
      }
      .height('100%')
      .width('100%')
    }

  }
}