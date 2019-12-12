import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Button {

    background: Rectangle {
        implicitWidth: 128
        implicitHeight: 48
        radius: 12
        color: "#00a8b0"
    }

    contentItem: Rectangle {
        anchors.fill: parent
        color: "transparent"

        RowLayout {
            anchors.centerIn: parent
            height: parent.height

            Text {
                font.family: mainFont.name
                font.pixelSize: 22
                text: "\uf415"
                color: "white"
            }

            Text {
                text: qsTr("ADD NEW TASK")
                font.family: "Roboto Bold"
                font.pixelSize: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                color: "white"
            }

        }

    }

}
