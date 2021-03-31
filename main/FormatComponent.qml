import QtQuick 2.0

Rectangle{
    id:fmwRec
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
            anchors.bottom:parent.bottom
            anchors.left:parent.left
            anchors.leftMargin: 269.8
            anchors.bottomMargin: 40
            color: "#E5B586"
            font.pixelSize: 36
            font.family: "GMSUIBuickGlobal-Regular"
        }
        onClicked: {
            fmwRec.parent.state="normal_status"
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
        width: 650
        anchors.bottom:parent.bottom
        anchors.right:parent.right
        Text{
            text:"取消"
            anchors.bottom:parent.bottom
            anchors.right:parent.right
            anchors.bottomMargin: 37
            anchors.rightMargin: 272.8
            color: "#FFFFFF"
            font.pixelSize: 36
            font.family: "GMSUIBuickGlobal-Regular"
        }
        onClicked: {
            fmwRec.parent.state="normal_status"
        }
    }
}
