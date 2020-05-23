import QtQuick 2.10
import QtQuick.Layouts 1.3
import "." as Comp

Rectangle {
    Layout.fillWidth: true
    Layout.fillHeight: true
    color: "transparent"

    ListView {
        id: lview
        anchors.fill: parent
        spacing: 12
        model: Comp.TaskModel {}
        delegate: Comp.Task {}
        section.property: "section"
        section.delegate: Comp.TaskSection {}
        clip: true

    }

    property QtObject listview: lview

}
