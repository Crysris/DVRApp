import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Item {
    Rectangle {
        id: replay_textView_rec
        anchors.left: parent.left
        anchors.top:parent.topr
        height:119
        width: 2372
        SiMouseArea{
            id:coBtn
            anchors.top:parent.top
            anchors.left:parent.left
            anchors.topMargin: 22
            anchors.leftMargin: 29
            width: 77
            height: 47
            Text{
                text:"选择"
                color: "#E5B586"
                font.pixelSize: 36
                font.family: "GMSUIBuickGlobalCond-Regular"
            }
        }
        SiMouseArea{
            id:caoBtn
            anchors.top:coBtn.top
            anchors.left: coBtn.right
            anchors.leftMargin: 611
            width: 77
            height: 47
            Text {
                text: "全选"
                color: "#E5B586"
                font.pixelSize: 36
                font.family: "GMSUIBuickGlobalCond-Regular"

            }
        }
    }
    Rectangle{
        id:replay_videoView_rec
        //color:"gray"
        anchors.top:replay_textView_rec.bottom
        anchors.left: parent.left
        width: 2372
        height: 552


    }
    Rectangle{
        id:replay_optionView_rec
        anchors.left: parent.left
        anchors.top:replay_videoView_rec.bottom
        width: 2372
        height: 143
        state:"rnv_status"
        Rectangle{
            id:rnvRec
            width: 220
            height: 86
            color: "#1F1B33"
            radius: 18
            border.color: "#979797"
            border.width: 1
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: 14
            anchors.bottomMargin: 13
            SiMouseArea{
                id:rnvBtn
                anchors.fill: parent
                Text{
                    id:rnvTxt
                    text: "普通视频"
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 28
                    color: "#E5B586"
                }
                onClicked:{
                    parent.parent.state = "rnv_status"
                }
            }
        }
        Rectangle{
            id:revRec
            width: 220
            height: 86
            color: "#474B63"
            radius: 18
            border.color: "#979797"
            border.width: 1
            anchors.left: rnvRec.right
            anchors.bottom: rnvRec.bottom
            anchors.leftMargin: 40
            SiMouseArea{
                id:revBtn
                anchors.fill: parent
                Text{
                    id:revTxt
                    text: "紧急视频"
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 28
                    color: "#FFFFFF"
                }
                onClicked:{
                    parent.parent.state = "rev_status"
                }
            }
        }
        Rectangle{
            id:rpvRec
            width: 220
            height: 86
            color: "#474B63"
            radius: 18
            border.color: "#979797"
            border.width: 1
            anchors.left: revRec.right
            anchors.bottom: revRec.bottom
            anchors.leftMargin: 40
            SiMouseArea{
                id:rpvBtn
                anchors.fill: parent
                Text{
                    id:rpvTxt
                    text: "泊车视频"
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 28
                    color: "#FFFFFF"
                }
                onClicked:{
                    parent.parent.state = "rpv_status"
                }
            }
        }
        Rectangle{
            id:rpRec
            width: 220
            height: 86
            color: "#474B63"
            radius: 18
            border.color: "#979797"
            border.width: 1
            anchors.left: rpvRec.right
            anchors.bottom: rpvRec.bottom
            anchors.leftMargin: 40
            SiMouseArea{
                id:rpBtn
                anchors.fill: parent
                Text{
                    id:rpTxt
                    text: "照片"
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 28
                    color: "#FFFFFF"
                }
                onClicked:{
                    parent.parent.state = "rv_status"
                }
            }
        }
        states:[
            State {
                name:"rnv_status"
                PropertyChanges {target: rnvRec;color:"#1F1B33" }
                PropertyChanges {target: rnvTxt;color:"#E5B586"}
                PropertyChanges {target: revRec;color: "#474B63"}
                PropertyChanges {target: revTxt;color:"#FFFFFF"}
                PropertyChanges {target: rpvRec;color: "#474B63"}
                PropertyChanges {target: rpvTxt;color:"#FFFFFF"}
                PropertyChanges {target: rpRec;color: "#474B63"}
                PropertyChanges {target: rpTxt;color:"#FFFFFF"}
            },
            State {
                name:"rev_status"
                PropertyChanges {target: rnvRec;color:"#474B63" }
                PropertyChanges {target: rnvTxt;color:"#FFFFFF"}
                PropertyChanges {target: revRec;color: "#1F1B33"}
                PropertyChanges {target: revTxt;color:"#E5B586"}
                PropertyChanges {target: rpvRec;color: "#474B63"}
                PropertyChanges {target: rpvTxt;color:"#FFFFFF"}
                PropertyChanges {target: rpRec;color: "#474B63"}
                PropertyChanges {target: rpTxt;color:"#FFFFFF"}
            },
            State {
                name:"rpv_status"
                PropertyChanges {target: rnvRec;color:"#474B63" }
                PropertyChanges {target: rnvTxt;color:"#FFFFFF"}
                PropertyChanges {target: revRec;color: "#474B63"}
                PropertyChanges {target: revTxt;color:"#FFFFFF"}
                PropertyChanges {target: rpvRec;color: "#1F1B33"}
                PropertyChanges {target: rpvTxt;color:"#E5B586"}
                PropertyChanges {target: rpRec;color: "#474B63"}
                PropertyChanges {target: rpTxt;color:"#FFFFFF"}
            },
            State {
                name:"rv_status"
                PropertyChanges {target: rnvRec;color:"#474B63"  }
                PropertyChanges {target: rnvTxt;color:"#FFFFFF"}
                PropertyChanges {target: revRec;color: "#474B63"}
                PropertyChanges {target: revTxt;color:"#FFFFFF"}
                PropertyChanges {target: rpvRec;color: "#474B63"}
                PropertyChanges {target: rpvTxt;color:"#FFFFFF"}
                PropertyChanges {target: rpRec;color:"#1F1B33"}
                PropertyChanges {target: rpTxt;color:"#E5B586"}
            }

        ]
    }
}

