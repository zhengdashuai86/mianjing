import { CommonModifier } from '@kit.ArkUI'

@Component
export struct Page2 {
  nums: number[] = Array.from({ length: 20 })
  @State tabBarModifier: CommonModifier = new CommonModifier()

  build() {
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

      }.padding({ left: 16, right: 16 })

      Column() {
        Tabs({ barModifier: this.tabBarModifier }) {
          TabContent() {
            List() {
              ForEach(this.nums, (i: number) => {
                ListItem() {
                  Column({ space: 8 }) {
                    Row({ space: 12 }) {
                      Image($r('sys.media.ohos_ic_public_device_matebook'))
                        .width(25)
                        .aspectRatio(1)
                        .fillColor(Color.Green)
                      Text('面经 | 2021美团3面经验总结')
                    }.width('100%')

                    Text('这里是我写的面经正文，行数限制“2”行，超出两行…显示').fontColor('#848484')
                    Row() {
                      Text('点赞 10  |  浏览 10  |   ').fontSize(12).fontColor('#C3C3C5')
                      Image($r('sys.media.ohos_ic_public_share')).width(12).fillColor(Color.Green)
                    }
                  }.width('100%').height(131).alignItems(HorizontalAlign.Start)
                }
              })
            }
          }.tabBar('最新')

          TabContent() {
            List() {
              ForEach(this.nums, (i: number) => {
                ListItem() {
                  Column({ space: 8 }) {
                    Row({ space: 12 }) {
                      Image($r('sys.media.ohos_ic_public_device_matebook'))
                        .width(25)
                        .aspectRatio(1)
                        .fillColor(Color.Green)
                      Text('面经 | 2021美团3面经验总结')
                    }.width('100%')

                    Text('这里是我写的面经正文，行数限制“2”行，超出两行…显示').fontColor('#848484')
                    Row() {
                      Text('点赞 10  |  浏览 10  |   ').fontSize(12).fontColor('#C3C3C5')
                      Image($r('sys.media.ohos_ic_public_share')).width(12).fillColor(Color.Green)
                    }
                  }.width('100%').height(131).alignItems(HorizontalAlign.Start)
                }
              })
            }
          }.tabBar('推荐')
        }.onAppear(() => {
          this.tabBarModifier.align(Alignment.Start)
        })
      }.width('100%').alignItems(HorizontalAlign.Start).padding({ left: 16 })

    }
    .height('100%')
    .width('100%')
  }
}