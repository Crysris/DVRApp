import QtQuick 2.0
import "IconPath.js" as IconPath


Item {
    Loader{
        id:record_component_loader
        anchors.left: parent.left
        anchors.top:parent.top
        anchors.bottom: parent.bottom
        width: 436
        source: "RecordComponent.qml"

    }

    Loader{
        id:disPlay_video_loader
        anchors.top:parent.top
        anchors.left:record_component_loader.right
        anchors.bottom: parent.bottom
        width: 1936
        source: "DisplayComponent.qml"
    }
}
