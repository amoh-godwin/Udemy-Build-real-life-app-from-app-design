import QtQuick 2.10
import QtQuick.Layouts 1.3

Rectangle {
    Layout.fillWidth: true
    Layout.preferredHeight: 24
    Layout.topMargin: 16
    Layout.bottomMargin: 4
    color: "transparent"

    Text {
        text: qsTr("Friday, 26")
        font.family: "Roboto"
        font.pixelSize: 21
        color: "white"
        renderType: Text.NativeRendering
    }

}
