import { Page0 } from './Page0';
import { Page1 } from './Page1';
import { Page2 } from './Page2';
import { Page3 } from './Page3';

@Entry
@Component
struct Index {
  source: source[] = [
    {
      img: $r('app.media.ic_home'),
      title: '首页',
      imgSelect: $r('app.media.ic_home_actived'),
      index: 0
    },
    {
      img: $r('app.media.ic_project'),
      title: '项目',
      imgSelect: $r('app.media.ic_project_active'),
      index: 1
    },
    {
      img: $r('app.media.ic_message'),
      title: '面经',
      imgSelect: $r('app.media.ic_message_active'),
      index: 2
    },
    {
      img: $r('app.media.ic_my'),
      title: '我的',
      imgSelect: $r('app.media.ic_my_active'),
      index: 3
    },
  ]
  @State currentNum: number = 0

  @Builder
  constract(img: ResourceStr, title: string, imgSelect: ResourceStr, index: number) {
    Column() {
      Image(this.currentNum == index ? imgSelect : img).width(28).aspectRatio(1)
      Text(title).fontSize(11)
    }.width(88).height(56).margin({ top: 5 })
  }

  build() {
    Column() {
      Tabs() {
        ForEach(this.source, (i: source) => {
          TabContent() {
            if (i.index == 0) {
              Page0()
            } else if (i.index == 1) {
              Page1()
            } else if (i.index == 2) {
              Page2()
            } else if (i.index == 3) {
              Page3()
            }
          }.tabBar(this.constract(i.img, i.title, i.imgSelect, i.index))
        })
      }.onChange((index: number) => {
        this.currentNum = index
      })
      .barPosition(BarPosition.End)
      .animationDuration(0)
      .scrollable(false)
    }
    .height('100%')
    .width('100%')
  }
}


interface source {
  img: ResourceStr
  title: string
  imgSelect: ResourceStr
  index: number
}