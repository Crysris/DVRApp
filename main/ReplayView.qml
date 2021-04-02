import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Item {
    Rectangle {
        id: rcRec
        anchors.left: parent.left
        anchors.top:parent.top
        height:119
        anchors.right: parent.right
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
        id:rvRec
        color: "#262626"
        anchors.top:rcRec.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        ListView {
            id: listView
            anchors.fill: parent
            model: 150
            delegate: Rectangle {
                height: 30
                width: parent.width
                border.color: "#AAAAAA"
                border.width: 1
                Text {
                    font.family: "microsoft yahei"
                    font.pixelSize: 15
                    anchors.centerIn: parent
                    //text:name+": "+number
                }
            }
            ScrollBar {
                target: listView
            }
        }
        /*states: [
            State {
                id: downRefresh
                name: "downRefresh"; when: (listView.contentHeight > 0) && (listView.contentY > (listView.contentHeight - root.height + nPullHeight))
                StateChangeScript {
                    name: "funDownRefresh"
                    script: funDownRefresh() }
            },
            State {
                id: upRefresh
                name: "upRefresh"; when: (listView.contentY < -nPullHeight)
                StateChangeScript {
                    name: "funUpRefresh"
                    script: funUpRefresh()
                }
            }
        ]*/
        Rectangle{
            id:"noDisplayRec"
            anchors.left: parent.left
            anchors.bottom:parent.bottom
            width:1167
            height: 143
            visible: false
        }
    }
    Rectangle{
        id:roRec
        anchors.left: parent.left
        anchors.bottom:parent.bottom
        width:1167
        height: 143
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
                    rnvRec.color="#1F1B33"
                    revRec.color=rpRec.color=rpvRec.color="#474B63"
                    rnvTxt.color="#E5B586"
                    revTxt.color=rpTxt.color=rpvTxt.color="#FFFFFF"
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
                    revRec.color="#1F1B33"
                    rnvRec.color=rpRec.color=rpvRec.color="#474B63"
                    revTxt.color="#E5B586"
                    rnvTxt.color=rpTxt.color=rpvTxt.color="#FFFFFF"
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
                    rpvRec.color="#1F1B33"
                    rnvRec.color=rpRec.color=revRec.color="#474B63"
                    rpvTxt.color="#E5B586"
                    rnvTxt.color=rpTxt.color=revTxt.color="#FFFFFF"
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
                    rpRec.color="#1F1B33"
                    rnvRec.color=revRec.color=rpvRec.color="#474B63"
                    rpTxt.color="#E5B586"
                    rnvTxt.color=revTxt.color=rpvTxt.color="#FFFFFF"
                }
            }
        }
    }
}
