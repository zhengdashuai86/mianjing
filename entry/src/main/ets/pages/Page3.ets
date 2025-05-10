@Component
export struct Page3 {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Row() {
        Column({ space: 8 }) {
          Row({ space: 12 }) {
            Text('小蚂蚁要上天').fontSize(24).fontWeight(700)
            Image($r('app.media.ic_signIn')).width(24).aspectRatio(1)
          }

          Row({ space: 8 }) {
            Text('编辑信息').fontColor('#979797')
            Image($r('sys.media.AI_keyboard')).width(24).aspectRatio(1).fillColor('#979797')
          }.width(66)
        }.alignItems(HorizontalAlign.Start)

        Image($r('sys.media.ohos_user_auth_icon_face')).width(52).aspectRatio(1).fillColor(Color.Pink)
      }
      .padding(20)
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)
      .margin({ top: 53 })
      .backgroundColor(Color.White)
      .borderRadius(8)

      Row() {
        Column({ space: 8 }) {
          Image($r('app.media.ic_history')).width(24)
          Text('历史记录').fontSize(12)
          Text(' ').fontSize(10).fontColor('#C3C3C5')
        }

        Column({ space: 8 }) {
          Image($r('app.media.ic_collect')).width(24)
          Text('我的收藏').fontSize(12)
          Text(' ').fontSize(10).fontColor('#C3C3C5')
        }

        Column({ space: 8 }) {
          Image($r('app.media.ic_like')).width(24)
          Text('我的点赞').fontSize(12)
          Text(' ').fontSize(10).fontColor('#C3C3C5')
        }

        Column({ space: 8 }) {
          Image($r('app.media.ic_study')).width(24)
          Text('累计学时').fontSize(12)
          Text('4 小时 >').fontSize(10).fontColor('#C3C3C5')
        }
      }
      .height(96)
      .justifyContent(FlexAlign.SpaceAround)
      .width('100%')
      .margin({ top: 42 })
      .backgroundColor(Color.White)
      .borderRadius(8)

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
          .backgroundColor(Color.White)

          Row() {
            Text('前端常用词')
            Image($r('app.media.Slice31')).width(30).aspectRatio(1)
          }
          .width(160)
          .height(64)
          .borderRadius(8)
          .justifyContent(FlexAlign.SpaceAround)
          .backgroundColor(Color.White)
        }
      }.margin({ top: 16 })

      Column() {
        Row() {
          Text('推荐分享').fontSize(14).textAlign(TextAlign.Start).width('100%')
          Image($r('sys.media.ohos_ic_public_arrow_right')).width(16).aspectRatio(1)
        }.padding({ left: 16, right: 32 }).height(44)

        Row() {
          Text('意见反馈').fontSize(14).textAlign(TextAlign.Start).width('100%')
          Image($r('sys.media.ohos_ic_public_arrow_right')).width(16).aspectRatio(1)
        }.padding({ left: 16, right: 32 }).height(44)

        Row() {
          Text('关于我们').fontSize(14).textAlign(TextAlign.Start).width('100%')
          Image($r('sys.media.ohos_ic_public_arrow_right')).width(16).aspectRatio(1)
        }.padding({ left: 16, right: 32 }).height(44)
      }.padding({ top: 10, bottom: 10 }).margin({ top: 16 }).backgroundColor(Color.White)
    }
    .backgroundColor('#F6F7F9')
    .padding({ left: 16, right: 16 })
    .height('100%')
    .width('100%')
  }
}