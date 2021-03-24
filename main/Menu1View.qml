import QtQuick 2.0
import "IconPath.js" as IconPath

Rectangle {
    color: "#262626"
    SiImageButton {
        id:videoBtn
        anchors.top: parent.top
        anchors.topMargin: 89
        anchors.horizontalCenter: parent.horizontalCenter
        iconSource: IconPath.menu_1_video
        onClicked: {
            videoBtn.opacity=1
            playbackBtn.opacity=0.6
            setBtn.opacity=0.6
        }
    }
    SiImageButton {
        id:playbackBtn
        anchors.top: parent.top
        anchors.topMargin: 323
        anchors.horizontalCenter: parent.horizontalCenter
        iconSource: IconPath.menu_1_playback
        onClicked: {
            playbackBtn.opacity=1
            videoBtn.opacity=0.6
            setBtn.opacity=0.6
        }
    }
    SiImageButton {
        id:setBtn
        anchors.top: parent.top
        anchors.topMargin: 557
        anchors.horizontalCenter: parent.horizontalCenter
        iconSource: IconPath.menu_1_set
        onClicked: {
            setBtn.opacity=1
            videoBtn.opacity=0.6
            playbackBtn.opacity=0.6

        }
    }
}
