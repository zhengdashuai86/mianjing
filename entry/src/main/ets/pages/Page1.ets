@Component
export struct Page1 {
  build() {
    Column({ space: 11 }) {
      Text('项目').fontSize(24).height(40)
      Column({ space: 11 }) {
        Row() {
          Image($r('app.media.ic_cover1')).width(60).height(80).margin(7)
          Column() {
            Text('后台管理系统').fontSize(14)
            Column({ space: 4 }) {
              Row() {
                Text('10').fontColor('#3266EE').fontSize(12)
                Text('/12节 | 已学进度：10%').fontColor('#979797').fontSize(12)
              }

              Divider().strokeWidth(3).width(210)
            }.alignItems(HorizontalAlign.Start)
          }
          .alignItems(HorizontalAlign.Start)
          .height(96)
          .justifyContent(FlexAlign.SpaceBetween)
          .padding({ top: 10, bottom: 16 })
        }.width('100%').height(96).backgroundColor('#FFFFFF').borderRadius(10)

        Row() {
          Image($r('app.media.ic_cover2')).width(60).height(80).margin(7)
          Column() {
            Text('在线问诊项目').fontSize(14)
            Column({ space: 4 }) {
              Row() {
                Text('10').fontColor('#3266EE').fontSize(12)
                Text('/12节 | 已学进度：10%').fontColor('#979797').fontSize(12)
              }

              Divider().strokeWidth(3).width(210)
            }.alignItems(HorizontalAlign.Start)
          }
          .alignItems(HorizontalAlign.Start)
          .height(96)
          .justifyContent(FlexAlign.SpaceBetween)
          .padding({ top: 10, bottom: 16 })
        }.width('100%').height(96).backgroundColor('#FFFFFF').borderRadius(10)
      }
    }
    .padding({ left: 24, right: 24 })
    .backgroundColor('#F9F9F9')
    .height('100%')
    .width('100%')
    .alignItems(HorizontalAlign.Start)
  }
}