import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4



Item {
    id:root
    state:scnView.state
    SetComponent{
        id:scnView
        anchors.left: parent.left
        anchors.top:parent.top
        anchors.bottom: parent.bottom
        width: 436
        visible: true
    }
    DisplayComponent{
        id:dpcView
        anchors.top:parent.top
        anchors.left:scnView.right
        anchors.bottom: parent.bottom
        width: 1936
        visible: true
    }
    FormatComponent{
        id:fcnView
        width: 1300
        height: 378
        anchors.left:scnView.right
        anchors.top:parent.top
        anchors.leftMargin: 99
        anchors.topMargin: 249
        visible: false
    }

    states:[
        State{
            name:"normal_status"
            PropertyChanges {
                target: fcnView
                visible:false
            }
        },
        State{
            name:"formatting_status"
            PropertyChanges {
                target: fcnView
                visible:true
            }
        }
    ]
}
