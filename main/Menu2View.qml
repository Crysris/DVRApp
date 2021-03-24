import QtQuick 2.0
import "IconPath.js" as IconPath

Rectangle {
    color: "#262626"
    SiImageButton {
        id:startBtn
        anchors.top: parent.top
        anchors.topMargin: 89
        anchors.horizontalCenter: parent.horizontalCenter
        iconSource: IconPath.menu_2_start_normal
    }
    SiImageButton {
        id:emergencyBtn
        anchors.top: parent.top
        anchors.topMargin: 323
        anchors.horizontalCenter: parent.horizontalCenter
        iconSource: IconPath.menu_2_emergency_normal
    }
    SiImageButton {
        id:camareBtn
        anchors.top: parent.top
        anchors.topMargin: 557
        anchors.horizontalCenter: parent.horizontalCenter
        iconSource: IconPath.menu_2_camare_normal
    }
}
