import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4



Item {
    state:"no_format_status"
    Loader{
        id:set_component_loader
        anchors.left: parent.left
        anchors.top:parent.top
        anchors.bottom: parent.bottoml
        width: 436
        source: "SetComponent.qml"
    }
    Loader{
        id:display_video_loader
        anchors.top:parent.top
        anchors.left:set_component_loader.right
        anchors.bottom: parent.bottom
        width: 1936
        source: 'DisplayComponent.qml'
    }
}
