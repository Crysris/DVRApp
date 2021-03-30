import QtQuick 2.0
import QtQuick.Window 2.0
import QtQuick.Controls 1.4


Window {
    visible: true
    width: 2622
    height: 814
    title: qsTr("Hello World")

    Item {
        id: root
        anchors.fill: parent
        /*Loader{
            id:setView_loader
            source: "SetView.qml"
            visible: true
        }*/
        Loader {
            id: menu1View_loader
            anchors.left: parent.left
            anchors.top: parent.top
            width: 250
            anchors.bottom: parent.bottom
            source: "Menu1View.qml"
            visible: true
        }
        Loader {
            id: replayView_loader
            anchors.left: menu1View_loader.right
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            source: "ReplayView.qml"
            visible: true
        }
        /*Loader {
            id: recordView_loader
            anchors.left: menu1View_loader.right
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            source: "RecordView.qml"
            visible: true
        }*/

    }
}
