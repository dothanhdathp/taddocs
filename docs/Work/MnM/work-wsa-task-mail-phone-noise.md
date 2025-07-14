# Phone Mic Noise

## Tóm tắt nội dung:

1. Bên WSA yêu cầu _sửa đổi tính năng_.
    - Mục đích: <mark>Giảm thiểu tiếng ồn khi chuyển ___mode___ Hands-free/Handset</mark>
1. Thay đổi
    - __Previous__: Tạo một thread với Hands-free (SCO On) và đầy vào ___terminated___ khi mà __Handset__ hoặc __Call End__
    - __Hiện tại__: Giữ lại _thread_ SCO và chỉ kết thúc khi mà ___call end___.
        - _Mình không rõ cái này lắm nhưng mà có lẽ là BT sẽ biết chắc chắn hơn._
    - <mark class=red>Tôi muốn nhận phương thức được sử dụng trước đây trong UX để xác định kết thúc cuộc gọi.</mark> _(I would like to receive the method used previously in UX for determining the end of a call.)_

## Phản hồi

Mình trả lại cho họ một luồng hoạt động của ứng dụng và để bên HQ tự quyết định.

```puml
@startuml
participant HacPhoneMains as HPM
participant BluetoothManager as BtM
participant CallStatusObserver as CSO
participant BluetoothDevice as BtD
participant "BluetoothAdapter\n(PiBluetoothAdapter)" as PBtA
participant PiBluetoothService as PBtS
participant PiBluetoothSys as PBtSys
participant PiBluetoothHfp as PBtH
participant "<diva-service>" as DvS

=== Init BT ==

BtM -> HPM : notifyBTDeviceStateChanged()
HPM -> HPM : slotBTDeviceStateChanged()
alt BT_DEVICE_DISCONNECTED
note right HPM : <disconnect> notifyBTDeviceCallStateChanged / slotBTDeviceCallStateChanged\n<disconnect> notifyBTDeviceHFAudioStatus / slotBTDeviceHFAudioStatus\n<disconnect> notifyMessageReceived / slotMessageReceived\n<disconnect> notifyGetMessage / slotGetMessage
else BT_DEVICE_CONNECTED
note right HPM : <connect> notifyBTDeviceCallStateChanged / slotBTDeviceCallStateChanged\n<connect> notifyBTDeviceHFAudioStatus / slotBTDeviceHFAudioStatus\n<connect> notifyMessageReceived / slotMessageReceived\n<connect> notifyGetMessage / slotGetMessage
end

=== UI Request Cancel Call ==

HPM -> BtD :cancelCall

alt CONTROL_BT_CALL_INCOMING
BtD -> PBtA :ignoreIncomingCall()
else Case CONTROL_BT_CALL_OUTGOING
BtD -> PBtA :cancelDialing()
else Remainning Legal Case
note right BtD: CONTROL_BT_CALL_ACTIVE\nCONTROL_BT_CALL_HELD\nCONTROL_BT_CALL_ACTIVE_WAIT\nCONTROL_BT_CALL_HELD_OUTGOING\nCONTROL_BT_CALL_ACTIVE_HELD
BtD -> PBtA :terminateCall()
end

PBtA -> PBtS :hangupCall()
PBtS -> PBtH :hangupCall()
PBtH -> DvS :SRV_BT_HF_Hangup()

== Take the responed call status ==

DvS -> DvS: srv_bt_send_ui_event(event, (void*)&call_ind);
note right DvS: event = SRV_BT_HF_CALL_STATUS_IND
DvS -> DvS: hf_call_status_ind()
DvS -> PBtH: PI_BT_HF_CALL_STATUS_IND
PBtH -> PBtH: cb_CALL_STATUS_IND
PBtH -> PBtH :handleCallStatusChanged
PBtH -> PBtH :handleCallStatus
PBtH -> PBtA :onEvtHfCallStatus
PBtA -> BtD :emit notifyCallStatusChanged()
BtD -> BtD :onCallStatusChanged()
BtD -> HPM :notifyBTDeviceCallStateChanged()
HPM -> HPM :slotBTDeviceCallStateChanged()

@enduml
```

