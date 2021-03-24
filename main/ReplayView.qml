import QtQuick 2.0

Item {
    Rectangle {
        id: replay_textView_rec
        height:119
        anchors.left: parent.left
        anchors.top:parent.top
        anchors.right: parent.right
    }
    Rectangle{
        id:replay_videoView_rec
        color:"#262626"
        anchors.top:replay_textView_rec.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        height: 552
    }
    Rectangle{
        id:replay_optionView_rec
        anchors.left: parent.left
        anchors.top:replay_videoView_rec.bottom
        anchors.bottom: parent.bottom
        anchors.right: parent.right
    }
}

