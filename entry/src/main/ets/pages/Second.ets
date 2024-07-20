import { router } from '@kit.ArkUI'
import { BusinessError } from '@kit.BasicServicesKit'

@Entry
@Component
struct Second {
  @State message: string = 'Hi There'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)

        Button() {
          Text('Back')
            .fontSize(20)
            .fontWeight(FontWeight.Normal)
        }
        .backgroundColor('#0D9FFB')
        .type(ButtonType.Capsule)
        .width('30%')
        .height('6%')
        .margin({
          top: 30
        })
        .onClick(() => {
          console.info(`Succeeded in clicking the 'Back' button.`)
          try {
            router.back()
          } catch (e) {
            let code = (e as BusinessError).code
            let message = (e as BusinessError).message
            console.info(`Failed to return to the first page. Code is ${code}, message is ${message}`)
          }
        })
      }
      .width('100%')
    }
    .width('100%')
    .height('100%')
  }
}