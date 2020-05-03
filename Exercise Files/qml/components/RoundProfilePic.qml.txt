import QtQuick 2.10
import QtGraphicalEffects 1.3

Rectangle {
    id: rect
    color: "transparent"

    property url source

    Image {
        id: img_src
        sourceSize: Qt.size(parent.width, parent.height)
        source: rect.source
        smooth: true
        visible: false
    }


    OpacityMask {
        anchors.fill: parent
        source: img_src
        maskSource: Rectangle {
            width: rect.width
            height: rect.height
            radius: width + height / 4
        }

    }

}
