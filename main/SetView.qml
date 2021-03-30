import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Rectangle {
    width: 550
    height: 550
    Button {
        id: replay_normalVideoBtn
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.leftMargin: 14
        anchors.bottomMargin: 13
        Rectangle {
            width: 220
            height: 86
            Text {
                text: "普通视频"
                font.pixelSize: 28
                color: "#FFFFFF"
            }
        }
    }
}
