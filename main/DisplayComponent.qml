import QtQuick 2.0
import "IconPath.js" as IconPath


Rectangle {
    id:root
    //anchors.fill:parent
    state:parent.state
    Rectangle{
        id:dpvRec
        color: "gray"
        anchors.top:parent.top
        anchors.left:parent.left
        anchors.bottom: parent.bottom
        width: 1536
    }
    Rectangle {
        id:rcRec
        color: "#262626"
        anchors.top:parent.top
        anchors.left: dpvRec.right
        anchors.bottom: parent.bottom
        width: 436
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
    states:[
        State{
            name:"normal_status"
            PropertyChanges {
                target: dpvRec
                opacity:1
            }
        },
        State{
            name:"formatting_status"
            PropertyChanges {
                target: dpvRec
                opacity:0.6
            }
        }


    ]
}


