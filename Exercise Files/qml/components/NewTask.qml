import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import "." as Comp

Rectangle {
    id: task
    Layout.fillWidth: true
    Layout.preferredHeight: !expanded ? 48 : (task_tArea.height + 96) > 128 ? task_tArea.height + 96 : 128
    radius: 8
    color: "#222231"
    visible: false

    property bool expanded: true

    ColumnLayout {
        width: parent.width
        height: parent.height
        spacing: 0

        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 48
            color: "transparent"

            RowLayout {
                anchors.fill: parent
                spacing: 0

                Rectangle {
                    Layout.leftMargin: 18
                    width: 13
                    height: 13
                    radius: height / 2
                    color: "transparent"
                    border.color: "#00a8b0"
                    border.width: 1
                }

                Column {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Layout.topMargin: 8
                    Layout.leftMargin: 18
                    spacing: 0

                    Comp.CustTextField {id: task_title; color: "white"}

                    Comp.CustTextField {
                        id: task_section
                        placeholderText: "Project: "
                        visible: new_task.expanded
                    }

                }

                Comp.IconicButton {
                    Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                    Layout.rightMargin: 18
                    color: "#727272"
                    text: "\uf1d8"

                    onClicked: {
                        new_task.expanded = !new_task.expanded
                    }

                }

            }

        }

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.leftMargin: 18
            color: "transparent"
            visible: task.expanded

            TextArea {
                id: task_tArea
                width: parent.width
                selectByMouse: true
                selectionColor: "orange"
                selectedTextColor: "white"
                padding: 0
                topPadding: 6
                font.pixelSize: 12
                color: "#727272"
                cursorDelegate: Component {
                    Rectangle {
                        width: 1
                        height: 1
                        color: "transparent"
                    }
                }
            }

        }

        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 48
            Layout.alignment: Qt.AlignBottom
            color: "transparent"
            visible: new_task.expanded

            Row {
                spacing: 8

                anchors {
                    top: parent.top
                    bottom: parent.bottom
                    right: parent.right
                    topMargin: 18
                    bottomMargin: 18
                    rightMargin: 18
                }


                Text {
                    font.family: mainFont.name
                    font.pixelSize: 20
                    color: "#727272"
                    text: "\uf150"
                }

                Text {
                    font.family: mainFont.name
                    font.pixelSize: 20
                    color: "#727272"
                    text: "\ufc92"
                }

                Text {
                    font.family: mainFont.name
                    font.pixelSize: 20
                    color: "#727272"
                    text: "\ufb42"
                }

                Text {
                    font.family: mainFont.name
                    font.pixelSize: 20
                    color: "#727272"
                    text: "\uf224"
                }

            }

        }

    }

    property QtObject title: task_title
    property QtObject section: task_section
    property QtObject detail: task_tArea

    property string titleText: title.text
    property string sectionText: section.text
    property string detailText: detail.text

}
