@Component
export struct Page0 {
  knowledge: String[] =
    ['HTML5', 'CSS', '移动端布局', 'Vue', 'React', 'Node', 'Webpack', 'TypeScript', 'Git', 'HTTP', 'ES6', '小程序',
      'Flutter', 'Kotlin']

  build() {
    Column() {

      Scroll() {


        Column() {
          Column({ space: 24 }) {
            Row({ space: 16 }) {
              Stack() {
                Image($r('sys.media.ohos_ic_public_search_filled'))
                  .width(16)
                  .fillColor('#979797')
                  .position({ top: 10, left: 12 })
                  .zIndex(9)
                TextInput({ placeholder: '请输入关键词' })
                  .padding({ left: 32 })
                  .fontColor('#979797')
                  .backgroundColor('#F6F7F9')
              }.alignContent(Alignment.Start).width(288)

              Image($r('app.media.ic_signIn')).width(24).aspectRatio(1)
            }.width(328).height(36)

            Swiper() {
              Image($r('app.media.banner')).height(126)
              Image($r('app.media.Slice2')).height(126)
            }.width('100%').autoPlay(true).indicator(false)

            Column({ space: 8 }) {
              Text('训练专区').fontSize(16)
              Row({ space: 8 }) {
                Image($r('app.media.ic_fontEnd')).width(160).height(110)
                Image($r('app.media.ic_Harmony')).width(160).height(110)
              }
            }.alignItems(HorizontalAlign.Start).width('100%')

            Column({ space: 8 }) {
              Text('辅助工具').fontSize(16)
              Row({ space: 8 }) {
                Row({ space: 8 }) {
                  Row() {
                    Text('小面AI')
                    Image($r('app.media.Slice3')).width(30).aspectRatio(1)
                  }
                  .width(160)
                  .height(64)
                  .borderRadius(8)
                  .justifyContent(FlexAlign.SpaceAround)
                  .backgroundColor('#F6F7F9')

                  Row() {
                    Text('前端常用词')
                    Image($r('app.media.Slice31')).width(30).aspectRatio(1)
                  }
                  .width(160)
                  .height(64)
                  .borderRadius(8)
                  .justifyContent(FlexAlign.SpaceAround)
                  .backgroundColor('#F6F7F9')
                }
              }
            }.alignItems(HorizontalAlign.Start).width('100%')

          }.padding({ left: 16, right: 16 }).margin({ bottom: 24 })

          Column() {
            Text('知识点学习').padding(16)
            List({ space: 16 }) {
              ForEach(this.knowledge, (i: string) => {
                ListItem() {
                  Row() {
                    Text(i).fontSize(14).textAlign(TextAlign.Start).width('100%')
                    Image($r('sys.media.ohos_ic_public_arrow_right')).width(16).aspectRatio(1)
                  }.padding({ left: 16, right: 32 })
                }
                .width('100%')
                .height(52)
                .backgroundColor('#FFFFFF')
                .borderRadius(8)
              })
            }.scrollBar(BarState.Off)
          }.width('100%').backgroundColor('#F6F7F9').alignItems(HorizontalAlign.Start).padding(16)
        }

      }.layoutWeight(1).scrollBar(BarState.Off)
    }.height('100%')
    .width('100%')
  }
}

