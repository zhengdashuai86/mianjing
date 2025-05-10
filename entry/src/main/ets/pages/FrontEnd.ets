@Entry
@Component
struct FrontEnd {
  knowledge: String[] =
    ['全部', 'CSS', '移动端布局', 'Vue', 'React', 'Node', 'Webpack', 'TypeScript', 'Git', 'HTTP', 'ES6', '小程序',
      'Flutter', 'Kotlin']
  data: titleInterface[] = [
    {
      "title": "题目排序",
      "buttons": [{ "text": "默认" }, { "text": "浏览量<>" }]
    },
    {
      "title": "题目难度",
      "buttons": [{ "text": "全部" }, { "text": "简单" }, { "text": "一般" }, { "text": "困难" }]
    },
    {
      "title": "选择阶段",
      "buttons": [
        { "text": "React.js" },
        { "text": "Vue.js" },
        { "text": "移动端布局" },
        { "text": "CSS" },
        { "text": "HTML5" },
        { "text": "jQuery" },
        { "text": "AJAX" },
        { "text": "Node.js" },
        { "text": "小程序" },
        { "text": "兼容性问题" },
        { "text": "性能优化" },
        { "text": "其他" }
      ]
    }
  ]
  @State selected: number = 0
  @State isShow: boolean = false
  @State choose: number[] = [0, 0, 0]

  build() {
    Column() {
      Column() {
        Row({ space: 16 }) {
          Image($r('sys.media.ohos_ic_public_arrow_left')).width(24).aspectRatio(1).fillColor(Color.White)
          Stack() {
            Image($r('sys.media.ohos_ic_public_search_filled'))
              .width(16)
              .fillColor('#3C3E42')
              .position({ top: 12, left: 12 })
              .zIndex(9)
            TextInput({ placeholder: '搜索题目' })
              .padding({ left: 32 })
              .backgroundColor('#80f6f7f9')
          }.alignContent(Alignment.Start).width(120)
        }
        .width('100%')
        .height(56)
        .padding({ left: 8, right: 17 })
        .justifyContent(FlexAlign.SpaceBetween)

        Row({ space: 15 }) {
          Image($r('app.media.ic_HTML5')).width(86).height(115)
          Column() {
            Text('前端知识点').fontColor(Color.White)
            Text('知识点描述以vue技术栈为例的后台管理系统面试题整理')
              .fontColor(Color.White)
              .margin({ top: 15, bottom: 21 }).width(230)
            Text('学习进度：10%').fontColor('#D9DBDE')
          }.alignItems(HorizontalAlign.Start)
        }.margin({ top: 16 })

      }.backgroundColor('#9F6033').height(213)

      Stack() {
        Tabs() {
          ForEach(this.knowledge, (i: string, j: number) => {
            TabContent() {
              List() {
                ForEach(Array.from({ length: 20 }), (i: number) => {
                  ListItem() {
                    this.tabC()
                  }.width(360).height(78)
                })
              }.layoutWeight(1)
              .scrollBar(BarState.Off)
              .position({ top: -15 })
            }.tabBar(this.tabB(i, j))
          })
        }
        .scrollable(false)
        .width(360)
        .barMode(BarMode.Scrollable)
        .onChange((j: number) => {
          this.selected = j
        })
        .margin({ top: -10 })
        .padding({ top: 10 })
        .backgroundColor(Color.White)
        .borderRadius({ topLeft: 10, topRight: 10 })
        .bindSheet($$this.isShow, this.sheetBuilder(), { height: SheetSize.FIT_CONTENT, showClose: false })
        .onClick(() => {
          this.isShow = true
        })


        Image($r('sys.media.clone_app_badge_5')).width(20).aspectRatio(1).position({
          top: 5,
          right: 10
        })
      }

    }
    .height('100%')
    .width('100%')
  }

  @Builder
  tabB(i: string, j: number) {
    if (this.selected == j) {
      Text(i)
        .height(43)
        .padding({ left: 14, right: 14 })
        .margin({ top: -20 })
        .decoration({ type: TextDecorationType.Underline })
        .fontColor(Color.Black)
    } else {
      Text(i).height(43).padding({ left: 14, right: 14 }).fontColor('#979797').margin({ top: -20 })
    }
  }

  @Builder
  tabC() {
    Column({ space: 10 }) {
      Row() {
        Row({ space: 7 }) {

          Text('简单')
            .width(33)
            .height(18)
            .fontSize(8)
            .backgroundColor('#4027AE60')
            .fontColor('#27AE60')
            .textAlign(TextAlign.Center)

          Text('Vue的最大的优势是什么？').fontSize(12)
        }

        Image($r('sys.media.ohos_ic_public_more')).width(17).aspectRatio(1)
      }.justifyContent(FlexAlign.SpaceBetween).width('100%')

      Row() {
        Text('点赞 6  |  浏览 10  |  已看过').fontSize(12).fontColor('#C3C3C5')
      }
    }
    .height(78)
    .width('100%')
    .padding(15)
    .alignItems(HorizontalAlign.Start)

  }

  @Builder
  sheetBuilder() {
    Stack() {

      Column() {
        Row() {
          Text('重置')
          Text('筛选题目')
          Text('完成').fontColor('#41B883').onClick(() => {
            this.isShow = false
          })
        }.height(48).width(360).justifyContent(FlexAlign.SpaceAround)

        Column({ space: 29 }) {
          Column({ space: 11 }) {
            ForEach(this.data, (i: titleInterface, j: number) => {
              Text(i.title).fontSize(14)
              Flex({ wrap: FlexWrap.Wrap }) {
                ForEach(i.buttons, (i: buttonInterface, k: number) => {
                  Text(i.text)
                    .fontColor(this.choose[j] == k ? '#41B883' : Color.Black)
                    .fontSize(14)
                    .backgroundColor('#F6F7F9')
                    .borderRadius(4)
                    .padding(11)
                    .margin(5)
                    .onClick(() => {
                      this.choose[j] = k
                    })
                })
              }
            })
          }.alignItems(HorizontalAlign.Start).width(312)
        }.padding(24).width(312).height(360)
      }.height(670).width(360)

      Image($r('sys.media.AI_screenshot'))
        .width(24)
        .aspectRatio(1)
        .fillColor(Color.Green)
        .position({ top: 270, left: 80 })
    }

  }
}

interface buttonInterface {
  text: string
}

interface titleInterface {
  title: string
  buttons: buttonInterface[]
}
