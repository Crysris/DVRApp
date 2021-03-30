import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0
import QtQuick.Controls 2.0

import "MyFunction.js" as Func
import "IconPath.js" as IconPath

Item {
    Rectangle {
        id: scpRec
        width: 436
        height: 814
        state: "middle_status"
        color: "#262626"
        //color:"#000000 50%"
        anchors.fill: parent
        //Rotation:
        /*gradient: Gradient {
            GradientStop {
                position: 0.0
                color: "#FFFFFF"
                //color: "#000000"
            }
            GradientStop {
                position: 1.0
                color: "#000000"
            }
        }*/
        Text {
            text: "录制时长"
            color: "#FFFFFF"
            font.pixelSize: 32
            font.family: "GMSUIBuickGlobalCond-Regular"
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.topMargin: 134
            anchors.leftMargin: 27
        }

        Rectangle {
            id: scnRec
            width: 49
            height: 152
            color: parent.color
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.topMargin: 81
            anchors.leftMargin: 241

            Tumbler {
                model: Func.timeArray(60)
                currentIndex: 57
                visibleItemCount: 3
                wrap: false
                delegate: Text {
                    text: modelData
                    opacity: 0.8 + Math.max(0, 1 - Math.abs(
                                                Tumbler.displacement)) * 0.2
                    font.pixelSize: 42 + Math.max(0, 1 - Math.abs(
                                                      Tumbler.displacement)) * 6
                }
            }
        }
        Text {
            text: "min"
            color: "#FFFFFF"
            font.pixelSize: 36
            font.family: "GMSUIBuickGlobalCond-Regular"
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.topMargin: 132
            anchors.rightMargin: 24
        }
        Text {
            text: "文件预览大小"
            color: "#FFFFFF"
            font.pixelSize: 32
            font.family: "GMSUIBuickGlobalCond-Regular"
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.topMargin: 289
            anchors.leftMargin: 27
        }
        SiMouseArea {
            id: scsBtn
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.bottomMargin: 364
            anchors.leftMargin: 70
            width: 38
            height: 50
            Text {
                id: scsTxt
                text: "小"
                color: "#FFFFFF"
                font.pixelSize: 38
                font.family: "GMSUIBuickGlobalCond-Regular"
            }
            onClicked: {
                parent.state = "small_status"
            }
        }
        SiMouseArea {
            id: scmBtn
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.bottomMargin: 362
            anchors.leftMargin: 196
            width: 48
            height: 62
            Text {
                id: scmTxt
                text: "中"
                color: "#E5B586"
                font.pixelSize: 48
                font.family: "GMSUIBuickGlobalCond-Regular"
            }
            onClicked: {
                parent.state = "middle_status"
            }
        }
        SiMouseArea {
            id: sclBtn
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.bottomMargin: 364
            anchors.leftMargin: 328
            width: 38
            height: 50
            Text {
                id: sclTxt
                text: "大"
                color: "#FFFFFF"
                font.pixelSize: 38
                font.family: "GMSUIBuickGlobalCond-Regular"
            }
            onClicked: {
                parent.state = "large_status"
            }
        }
        Text {
            text: "连续播放"
            color: "#FFFFFF"
            font.pixelSize: 32
            font.family: "GMSUIBuickGlobalCond-Regular"
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.topMargin: 515
            anchors.leftMargin: 36
        }
        Rectangle {
            id: cpRec
            width: 110
            height: 58
            color: parent.color
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.topMargin: 507
            anchors.leftMargin: 288
            SiMouseArea {
                id: cpBtn
                anchors.fill: parent
                Rectangle {
                    id: snIco
                    visible: true
                    width: 48
                    height: 48
                    anchors.top: parent.top
                    anchors.left: parent.left
                    anchors.topMargin: 5
                    anchors.leftMargin: 5
                    radius: 18
                    color: "#828894"
                    border.color: "#E7EEFF"
                    border.width: 1
                }
                Image {
                    id: snImg
                    width: 48
                    height: 48
                    visible: false
                    anchors.top: parent.top
                    anchors.topMargin: 5
                    anchors.right: parent.right
                    anchors.rightMargin: 5
                    //anchors.fill: parent
                    //fillMode: Image.PreserveAspectCrop
                    source: IconPath.set_componet_slider_normal
                }
                onClicked: {
                    snIco.visible = !snIco.visible
                    snImg.visible = !snImg.visible
                }
            }
        }
        Rectangle {
            width: 430
            height: 3
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.leftMargin: 3
            anchors.topMargin: 620
            LinearGradient{
                gradient:Gradient{
                    GradientStop {
                        position: 0.0
                        color: "#FFFFFF"
                        //color: "#000000"
                    }
                    GradientStop {
                        position: 0.5
                        color: "gray"
                    }
                    GradientStop {
                        position: 1.0
                        color: "#000000"
                    }
                }
                start: Qt.point(0, 0)
                end:Qt.point(parent.width,0)
            }
        }
        Rectangle{
            anchors.left: parent.left
            anchors.leftMargin: 27
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 57
            width: 382
            height: 86
            SiMouseArea{
                id:fmtBtn
                anchors.fill: parent
                Text{
                    text:"格式化SD卡"
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 42
                }
                onClicked: {

                }
            }
        }
        states: [
            State {
                name: "small_status"
                PropertyChanges {
                    target: scsBtn
                    width: 48
                    height: 62
                }
                PropertyChanges {
                    target: scmBtn
                    width: 38
                    height: 50
                }
                PropertyChanges {
                    target: sclBtn
                    width: 38
                    height: 50
                }
                PropertyChanges {
                    target: scsTxt
                    color: "#E5B586"
                    font.pixelSize: 48
                }
                PropertyChanges {
                    target: scmTxt
                    color: "#FFFFFF"
                    font.pixelSize: 38
                }
                PropertyChanges {
                    target: sclTxt
                    color: "#FFFFFF"
                    font.pixelSize: 38
                }
            },
            State {
                name: "middle_status"
                PropertyChanges {
                    target: scsBtn
                    width: 38
                    height: 50
                }
                PropertyChanges {
                    target: scmBtn
                    width: 48
                    height: 62
                }
                PropertyChanges {
                    target: sclBtn
                    width: 38
                    height: 50
                }
                PropertyChanges {
                    target: scsTxt
                    color: "#FFFFFF"
                    font.pixelSize: 38
                }
                PropertyChanges {
                    target: scmTxt
                    color: "#E5B586"
                    font.pixelSize: 48
                }
                PropertyChanges {
                    target: sclTxt
                    color: "#FFFFFF"
                    font.pixelSize: 38
                }
            },
            State {
                name: "large_status"
                PropertyChanges {
                    target: scsBtn
                    width: 38
                    height: 50
                }
                PropertyChanges {
                    target: scmBtn
                    width: 38
                    height: 50
                }
                PropertyChanges {
                    target: sclBtn
                    width: 48
                    height: 62
                }
                PropertyChanges {
                    target: scsTxt
                    color: "#FFFFFF"
                    font.pixelSize: 38
                }
                PropertyChanges {
                    target: scmTxt
                    color: "#FFFFFF"
                    font.pixelSize: 38
                }
                PropertyChanges {
                    target: sclTxt
                    color: "#E5B586"
                    font.pixelSize: 48
                }
            }
        ]
    }
}
