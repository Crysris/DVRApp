import QtQuick 2.0
import "IconPath.js" as IconPath

Item {
    anchors.fill: parent

    Rectangle {
        id:dpvcRec
        anchors.fill:parent
        Rectangle{
            id:dpvRec
            color: "gray"
            anchors.fill:parent
            anchors.top:parent.top
            anchors.left:parent.left
            anchors.bottom: parent.bottom
            width: 1500
        }
        Rectangle{
            id:fmwRec
            visible: false
            width: 1300
            height: 378
            anchors.left:parent.left
            anchors.top:parent.top
            anchors.leftMargin: 99
            anchors.topMargin: 249
            color: "#2A2F42"
            border.color: "#9FB1CE"
            border.width: 2
            radius: 14
            Text{
                text:"确定是否格式化SD卡"
                color: "#FFFFFF"
                anchors.top:parent.top
                anchors.topMargin: 101
                anchors.horizontalCenter: parent.horizontalCenter
                font.family: "GMSUIBuickGlobal-Light"
                font.pixelSize: 36
            }
            Rectangle{
                id:colLineRec
                width: 1203.1
                height: 2
                anchors.top:parent.top
                anchors.left:parent.left
                anchors.topMargin: 249
                anchors.leftMargin: 48.3
                color:"#4A516C"
            }
            SiMouseArea{
                id:cfBtn
                height:128
                width: 648
                anchors.bottom:parent.bottom
                anchors.left:parent.left
                Text{
                    text:"确定"
                    color: "#E5B586"
                    font.pixelSize: 36
                    font.family: "GMSUIBuickGlobal-Regular"

                }
            }
            Rectangle{
                id:rowLineRec
                width: 2
                height: 128
                anchors.bottom:parent.bottom
                anchors.left:parent.left
                anchors.leftMargin: 648
                color:"#4A516C"
            }
            SiMouseArea{
                id:ccBtn
                height:128
                width: 648
                anchors.bottom:parent.bottom
                anchors.left:parent.left
                Text{
                    text:"取消"
                    color: "#FFFFFF"
                    font.pixelSize: 36
                    font.family: "GMSUIBuickGlobal-Regular"

                }

            }




        }
    }
    Rectangle {
        id:rcRec
        color: "#262626"
        anchors.top:parent.top
        anchors.left: dpvcRec.right
        anchors.bottom: parent.bottom
        width: 436
        SiImageButton {
            id:recordingBtn
            anchors.top: parent.top
            anchors.topMargin: 175
            anchors.left: parent.left
            anchors.leftMargin: 130
            iconSource: IconPath.menu_3_recording_normal
        }
        SiImageButton {
            id:memoryBtn
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.topMargin: 359
            anchors.leftMargin: 110
            iconSource: IconPath.menu_3_memory_normal
        }


    }
    /*SetComponent{
        id:setComponent
    }*/

}
