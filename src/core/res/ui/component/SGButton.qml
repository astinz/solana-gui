import QtQuick

Rectangle {
    width: 60
    height: 30
    radius: 6
    border.width: 1
    color: "#4C5052"
    border.color: Qt.lighter(color)
    anchors.verticalCenter: parent.verticalCenter
    property alias text: idText.text
    Text {
        id: idText
        color: "#BBB"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }
}
