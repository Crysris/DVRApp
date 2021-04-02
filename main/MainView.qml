
import QtQuick 2.0
import "IconPath.js" as IconPath


Rectangle {
    //color: "#262626"
    state: "video_status"
    SiImageButton {
        id: videoBtn
        anchors.top: parent.top
        anchors.topMargin: 89
        anchors.horizontalCenter: parent.horizontalCenter
        iconSource: IconPath.menu_1_video
        onClicked: {
            parent.state = "video_status"

        }
    }
    Text {
        text: "录制"
        width: 72
        height: 47
        font.pixelSize: 37
        font.family: "GMSUIBuickGlobal-Light"
        color: "#DCDCDC"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top:videoBtn.bottom
    }
    SiImageButton {
        id: playbackBtn
        anchors.top: parent.top
        anchors.topMargin: 323
        anchors.horizontalCenter: parent.horizontalCenter
        iconSource: IconPath.menu_1_playback
        onClicked: {
            parent.state = "playback_status"
        }
    }
    Text {
        text: "回放"
        width: 72
        height: 47
        font.pixelSize: 37
        font.family: "GMSUIBuickGlobal-Light"
        color: "#DCDCDC"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top:playbackBtn.bottom
    }
    SiImageButton {
        id: setBtn
        anchors.top: parent.top
        anchors.topMargin: 557
        anchors.horizontalCenter: parent.horizontalCenter
        iconSource: IconPath.menu_1_set
        onClicked: {
            parent.state = "set_status"
        }
    }
    Text {
        text: "设置"
        width: 72
        height: 47
        font.pixelSize: 37
        font.family: "GMSUIBuickGlobal-Light"
        color: "#DCDCDC"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top:setBtn.bottom
    }

    states: [
        State {
            name: "video_status"
            PropertyChanges {
                target: videoBtn
                opacity: 1
                pressed: true
            }
            PropertyChanges {
                target: playbackBtn
                opacity: 0.6
                pressed: false
            }
            PropertyChanges {
                target: setBtn
                opacity: 0.6
                pressed: false
            }
        },
        State {
            name: "playback_status"
            PropertyChanges {
                target: videoBtn
                opacity: 0.6
                pressed: false
            }
            PropertyChanges {
                target: playbackBtn
                opacity: 1
                pressed: true
            }
            PropertyChanges {
                target: setBtn
                opacity: 0.6
                pressed: false
            }
        },
        State {
            name: "set_status"
            PropertyChanges {
                target: videoBtn
                opacity: 0.6
                pressed: false
            }
            PropertyChanges {
                target: playbackBtn
                opacity: 0.6
                pressed: false
            }
            PropertyChanges {
                target: setBtn
                opacity: 1
                pressed: true
            }
        }
    ]
}
