import QtQuick 2.0
import "IconPath.js" as IconPath

Rectangle {
    color: "#262626"
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
