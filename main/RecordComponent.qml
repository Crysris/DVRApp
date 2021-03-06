import QtQuick 2.0
import "IconPath.js" as IconPath


Item {
    Rectangle {
        id:record_component_rec
        color: "#262626"
        state: "start_status"
        anchors.fill: parent

        SiImageButton {
            id:startBtn
            anchors.top: parent.top
            anchors.topMargin: 89
            anchors.horizontalCenter: parent.horizontalCenter
            iconSource: IconPath.menu_2_start_normal
            onClicked: {
                parent.state="start_status"
            }
        }
        Text {
            text: "开始/暂停录制"
            width: 181
            height: 37
            font.pixelSize: 28
            font.family: "GMSUIBuickGlobal-Light"
            color: "#DCDCDC"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top:startBtn.bottom
        }
        SiImageButton {
            id:emergencyBtn
            anchors.top: parent.top
            anchors.topMargin: 323
            anchors.horizontalCenter: parent.horizontalCenter
            iconSource: IconPath.menu_2_emergency_normal
            onClicked: {
                parent.state="emergency_status"
            }
        }
        Text {
            text: "紧急录制"
            width: 112
            height: 37
            font.pixelSize: 28
            font.family: "GMSUIBuickGlobal-Light"
            color: "#DCDCDC"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top:emergencyBtn.bottom
        }
        SiImageButton {
            id:camareBtn
            anchors.top: parent.top
            anchors.topMargin: 557
            anchors.horizontalCenter: parent.horizontalCenter
            iconSource: IconPath.menu_2_camare_normal
            onClicked: {
                 parent.state="camare_status"
            }
        }
        Text {
            text: "拍照"
            width: 56
            height: 37
            font.pixelSize: 28
            font.family: "GMSUIBuickGlobal-Light"
            color: "#DCDCDC"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top:camareBtn.bottom
        }
        states:[
            State{
                name:"start_status"
                PropertyChanges {
                    target: startBtn
                    iconSource:IconPath.menu_2_start_selected
                }
                PropertyChanges {
                    target: emergencyBtn
                    iconSource:IconPath.menu_2_emergency_normal
                }
                PropertyChanges {
                    target: camareBtn
                    iconSource:IconPath.menu_2_camare_normal
                }
            },
            State{
                name:"emergency_status"
                PropertyChanges {
                    target: startBtn
                    iconSource:IconPath.menu_2_start_normal
                }
                PropertyChanges {
                    target: emergencyBtn
                    iconSource:IconPath.menu_2_emergency_selected
                }
                PropertyChanges {
                    target: camareBtn
                    iconSource:IconPath.menu_2_camare_normal
                }
            },
            State{
                name:"camare_status"
                PropertyChanges {
                    target: startBtn
                    iconSource:IconPath.menu_2_start_normal
                }
                PropertyChanges {
                    target: emergencyBtn
                    iconSource:IconPath.menu_2_emergency_normal
                }
                PropertyChanges {
                    target: camareBtn
                    iconSource:IconPath.menu_2_camare_selected
                }
            }

        ]
    }
}
