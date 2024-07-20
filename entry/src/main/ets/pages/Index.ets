import { router } from '@kit.ArkUI'
import { BusinessError } from '@kit.BasicServicesKit'

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)

        Button() {
          Text('Next')
            .fontSize(20)
            .fontWeight(FontWeight.Normal)
        }
        .type(ButtonType.Capsule)
        .margin({
          top: 30
        })
        .backgroundColor('#0D9FFB')
        .width('30%')
        .height('6%')
        .onClick(() => {
          console.info(`Succeed in clicking the 'Next' button.`)
          router.pushUrl({ url: 'pages/Second' }).then(() => {
            console.info('Succeed in jumping to the second page.')
          }).catch((e: BusinessError) => {
            console.error(`Failed to jump to the second page. Code is ${e.code}`)
          })
        })
      }
      .width('100%')
    }
    .width('100%')
    .height('100%')
  }
}