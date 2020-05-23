import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import "components" as Comp

ApplicationWindow {
    visible: true
    width: 360
    height: 600

    FontLoader { id: mainFont; source: "../fonts/materialdesignicons-webfont.ttf"}

    property var rand_color: ["dodgerblue", "#ff424c", "#00c1ed", "#ff9700", "#00a8b0", "yellow", "#00ed06"]

    Rectangle {
        anchors.fill: parent
        color: "#191928"

        ColumnLayout {
            anchors {
                fill: parent
                leftMargin: 18
                rightMargin: 18
                topMargin: 28
                bottomMargin: 36
            }

            Comp.NormalSearchBar {
                Layout.fillWidth: true
                Layout.preferredHeight: 48
            }

            Comp.DateHeader {}

            Comp.NewTask { id: new_task }

            Comp.TaskView { id: taskview }

            Comp.ButtonPrimary {
                Layout.fillWidth: true
                Layout.preferredHeight: 48

                onClicked: {

                    if (this.inserting) {
                        new_task.section.text = ""
                        new_task.title.text = ""
                        new_task.detail.text = ""
                        new_task.visible = false
                        this.inserting = false

                    } else {
                        this.inserting = true
                        new_task.visible = true
                    }

                }

            }


        }

    }

}
