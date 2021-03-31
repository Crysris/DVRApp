import QtQuick 2.0
import "IconPath.js" as IconPath
import "MyFunction.js" as MyFunction

Rectangle {
    id:root
    //anchors.fill:parent
    state:parent.state
    Rectangle{
        id:dpvRec
        color: "gray"
        anchors.top:parent.top
        anchors.left:parent.left
        anchors.bottom: parent.bottom
        width: 1536
        Text{
            id:cdValue
            text:MyFunction.currentDate()
            color: "#FFFFFF"
            font.family: "GMSUIBuickGlobal-Regular"
            font.pixelSize:36
            anchors.left:parent.left
            anchors.top:parent.top
            anchors.leftMargin: 35
            anchors.topMargin: 32
        }
        Text{
            id:ctValue
            text:MyFunction.currentTime()
            color: "#FFFFFF"
            font.family: "GMSUIBuickGlobal-Regular"
            font.pixelSize:36
            anchors.left:cdValue.right
            anchors.top:cdValue.top
            anchors.leftMargin: 96.5
        }
        Text{
            id:vinValue
            text:"VIN号：1234562"
            font.family: "GMSUIBuickGlobal-Regular"
            color: "#FFFFFF"
            font.pixelSize:36
            anchors.left:ctValue.right
            anchors.top:ctValue.top
            anchors.leftMargin: 96.5
        }
        Text{
            id:speedTex
            text:"车速"
            font.family: "GMSUIBuickGlobal-Regular"
            color: "#FFFFFF"
            font.pixelSize: 36
            anchors.left:parent.left
            anchors.top:parent.top
            anchors.leftMargin: 63
            anchors.topMargin: 167
        }
        Text{
            id:speedValue
            text:"60km/h"
            font.family: "GMSUIBuickGlobal-Regular"
            color: "#E5B586"
            font.pixelSize: 36
            anchors.horizontalCenter: speedTex.horizontalCenter
            anchors.top:speedTex.bottom
        }
        Text{
            id:brakeStatusTex
            text:"刹车状态"
            font.family: "GMSUIBuickGlobal-Regular"
            color: "#FFFFFF"
            font.pixelSize: 36
            anchors.left:parent.left
            anchors.top:parent.top
            anchors.leftMargin: 28
            anchors.topMargin: 308
        }
        Text{
            id:brakeStatusValue
            text:"良好"
            font.family: "GMSUIBuickGlobal-Regular"
            color: "#E5B586"
            font.pixelSize: 36
            anchors.horizontalCenter: brakeStatusTex.horizontalCenter
            anchors.top:brakeStatusTex.bottom
        }
        Text{
            id:turnSignalTex
            text:"转向灯"
            font.family: "GMSUIBuickGlobal-Regular"
            color: "#FFFFFF"
            font.pixelSize: 36
            anchors.left:parent.left
            anchors.top:parent.top
            anchors.leftMargin: 52
            anchors.topMargin: 472
        }
        Text{
            id:turnSignalValue
            text:"左转向"
            font.family: "GMSUIBuickGlobal-Regular"
            color: "#E5B586"
            font.pixelSize: 36
            anchors.horizontalCenter: turnSignalTex.horizontalCenter
            anchors.top:turnSignalTex.bottom
        }
        Text{
            id:safeBeltTex
            text:"安全带信息"
            font.family: "GMSUIBuickGlobal-Regular"
            color: "#FFFFFF"
            font.pixelSize: 36
            anchors.left:parent.left
            anchors.top:parent.top
            anchors.leftMargin: 11
            anchors.topMargin: 613
        }
        Text{
            id:safeBeltValue
            text:"安全"
            font.family: "GMSUIBuickGlobal-Regular"
            color: "#E5B586"
            font.pixelSize: 36
            anchors.horizontalCenter: safeBeltTex.horizontalCenter
            anchors.top:safeBeltTex.bottom
        }
        Text{
            id:highBeamTex
            text:"远光灯"
            font.family: "GMSUIBuickGlobal-Regular"
            color: "#FFFFFF"
            font.pixelSize: 36
            anchors.right:parent.right
            anchors.top:parent.top
            anchors.rightMargin: 16
            anchors.topMargin: 128
        }
        Text{
            id:highBeamValue
            text:"关闭"
            font.family: "GMSUIBuickGlobal-Regular"
            color: "#E5B586"
            font.pixelSize: 36
            anchors.horizontalCenter: highBeamTex.horizontalCenter
            anchors.top:highBeamTex.bottom
        }
        Text{
            id:lowBeamTex
            text:"近光灯"
            font.family: "GMSUIBuickGlobal-Regular"
            color: "#FFFFFF"
            font.pixelSize: 36
            anchors.right:parent.right
            anchors.top:parent.top
            anchors.rightMargin: 16
            anchors.topMargin: 269
        }
        Text{
            id:lowBeamValue
            text:"打开"
            font.family: "GMSUIBuickGlobal-Regular"
            color: "#E5B586"
            font.pixelSize: 36
            anchors.horizontalCenter: lowBeamTex.horizontalCenter
            anchors.top:lowBeamTex.bottom
        }
        Text{
            id:rearFogLampTex
            text:"后雾灯"
            font.family: "GMSUIBuickGlobal-Regular"
            color: "#FFFFFF"
            font.pixelSize: 36
            anchors.right:parent.right
            anchors.top:parent.top
            anchors.rightMargin: 16
            anchors.topMargin: 433
        }
        Text{
            id:rearFogLampValue
            text:"关闭"
            font.family: "GMSUIBuickGlobal-Regular"
            color: "#E5B586"
            font.pixelSize: 36
            anchors.horizontalCenter: rearFogLampTex.horizontalCenter
            anchors.top:rearFogLampTex.bottom
        }
        Text{
            id:frontFogLampTex
            text:"前雾灯"
            font.family: "GMSUIBuickGlobal-Regular"
            color: "#FFFFFF"
            font.pixelSize: 36
            anchors.right:parent.right
            anchors.top:parent.top
            anchors.rightMargin: 16
            anchors.topMargin: 574
        }
        Text{
            id:frontFogLampValue
            text:"关闭"
            font.family: "GMSUIBuickGlobal-Regular"
            color: "#E5B586"
            font.pixelSize: 36
            anchors.horizontalCenter: frontFogLampTex.horizontalCenter
            anchors.top:frontFogLampTex.bottom
        }


        //定时器 VIN号：1234562
        Timer{
            id: timer
            interval: 1 //间隔(单位毫秒):1000毫秒=1秒
            repeat: true //重复
            onTriggered:{
                cdValue.text = MyFunction.currentDate()
                ctValue.text=MyFunction.currentTime()
            }
        }
        Component.onCompleted: {
            timer.start();
        }
    }
    Rectangle {
        id:rcRec
        color: "#262626"
        anchors.top:parent.top
        anchors.left: dpvRec.right
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
    states:[
        State{
            name:"normal_status"
            PropertyChanges {
                target: dpvRec
                opacity:1
            }
        },
        State{
            name:"formatting_status"
            PropertyChanges {
                target: dpvRec
                opacity:0.6
            }
        }


    ]
}


