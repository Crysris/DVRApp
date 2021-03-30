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
        state: m_MainView.state
        MainView {
            id: m_MainView
            anchors.left: parent.left
            anchors.top: parent.top
            width: 250
            anchors.bottom: parent.bottom
            visible: true
        }
        RecordView {
            id: m_RecordView
            anchors.left: m_MainView.right
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            visible: true
        }
        ReplayView {
            id: m_ReplayView
            anchors.left: m_MainView.right
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            visible: false
        }
        SetView {
            id: m_SetView
            anchors.left: m_MainView.right
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            visible: false
        }
        states: [
            State {
                name: "video_status"
                PropertyChanges {
                    target: m_RecordView
                    visible: true
                }
                PropertyChanges {
                    target: m_ReplayView
                    visible: false
                }
                PropertyChanges {
                    target: m_SetView
                    visible: false
                }
            },
            State {
                name: "playback_status"
                PropertyChanges {
                    target: m_RecordView
                    visible: false
                }
                PropertyChanges {
                    target: m_ReplayView
                    visible: true
                }
                PropertyChanges {
                    target: m_SetView
                    visible: false
                }
            },
            State {
                name: "set_status"
                PropertyChanges {
                    target: m_RecordView
                    visible: false
                }
                PropertyChanges {
                    target: m_ReplayView
                    visible: false
                }
                PropertyChanges {
                    target: m_SetView
                    visible: true
                }
            }
        ]
    }
}
