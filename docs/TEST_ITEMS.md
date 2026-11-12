# 测试项清单

从 `FullTestItemList` 反编译结果提取，共 22 项。

| 分组 | 类名 | smali 路径 |
|---|---|---|
| sysinfo | SystemVersionTest | `com/sprd/validationtools/itemstest/sysinfo/SystemVersionTest` |
| lcd | ScreenColorTest | `com/sprd/validationtools/itemstest/lcd/ScreenColorTest` |
| tp | SingleTouchPointTest | `com/sprd/validationtools/itemstest/tp/SingleTouchPointTest` |
| tp | MutiTouchTest | `com/sprd/validationtools/itemstest/tp/MutiTouchTest` |
| audio | VibratorTest | `com/sprd/validationtools/itemstest/audio/VibratorTest` |
| audio | ReceiverTest | `com/sprd/validationtools/itemstest/audio/ReceiverTest` |
| audio | PhoneLoopBackTest | `com/sprd/validationtools/itemstest/audio/PhoneLoopBackTest` |
| telephony | PhoneCallTestActivity | `com/sprd/validationtools/itemstest/telephony/PhoneCallTestActivity` |
| camera | FrontCameraTestActivity | `com/sprd/validationtools/itemstest/camera/FrontCameraTestActivity` |
| camera | CameraTestActivity | `com/sprd/validationtools/itemstest/camera/CameraTestActivity` |
| keypad | KeyTest | `com/sprd/validationtools/itemstest/keypad/KeyTest` |
| charger | ChargerTest | `com/sprd/validationtools/itemstest/charger/ChargerTest` |
| fm | FMTest | `com/sprd/validationtools/itemstest/fm/FMTest` |
| audio | SoundTriggerTestActivity | `com/sprd/validationtools/itemstest/audio/SoundTriggerTestActivity` |
| bt | BluetoothTestActivity | `com/sprd/validationtools/itemstest/bt/BluetoothTestActivity` |
| wifi | WifiTestActivity | `com/sprd/validationtools/itemstest/wifi/WifiTestActivity` |
| gps | GpsTestActivity | `com/sprd/validationtools/itemstest/gps/GpsTestActivity` |
| storage | SDCardTest | `com/sprd/validationtools/itemstest/storage/SDCardTest` |
| telephony | SIMCardTestActivity | `com/sprd/validationtools/itemstest/telephony/SIMCardTestActivity` |
| torch | TorchActivity | `com/sprd/validationtools/itemstest/torch/TorchActivity` |
| keylight | KeyLightTestActivity | `com/sprd/validationtools/itemstest/keylight/KeyLightTestActivity` |
| usb | UsbActivity | `com/sprd/validationtools/itemstest/usb/UsbActivity` |

> 说明：清单为静态提取，运行时还会经 `TestItemList.addAndFilterTestItemList()` 按
> `isSupport()` / `getActivityInfo()` 过滤，因此实际显示项可能更少。
> 指纹项已按需求强制 `isSupport()=false`。
