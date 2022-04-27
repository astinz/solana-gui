import QtQuick
import QtQuick.Controls
import "../component"

Popup {
    anchors.centerIn: Overlay.overlay
    width: 500
    height: 150
    modal: true
    focus: true
    padding: 0
    closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
    background: Rectangle {
        implicitWidth: 200
        implicitHeight: 200
        color: "#45494A"
        border.width: 2
        border.color: Qt.lighter(color)
    }

    contentItem: Item {
        width: parent.width
        height: parent.height

        Rectangle {
            width: parent.width
            height: 25
            color: "#3C3F41"
            Text {
                text: "Set Custom Cluster URL"
                color: "#BBB"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
        }
        Rectangle {
            width: parent.width
            height: 40
            color: "#3C3F41"
            anchors.bottom: parent.bottom
            Item {
                width: parent.width / 2
                height: parent.height
                anchors.right: parent.right
                Row {
                    anchors.fill: parent
                    spacing: 8
                    anchors.rightMargin: 8
                    layoutDirection: Qt.RightToLeft
                    SGButton {
                        text: "Cancel"
                    }

                    SGButton {
                        text: "Apply"
                    }

                    SGButton {
                        text: "Save"
                    }
                }
            }
        }
    }
}
