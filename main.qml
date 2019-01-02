import QtQuick 2.12
import QtQuick.Window 2.12
import TableModel 0.1

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    TableView {
          anchors.fill: parent
          columnSpacing: 1
          rowSpacing: 1
          clip: true

          model: TableModel {}

          delegate: Rectangle {
              implicitWidth: 150
              implicitHeight: 50
              border.color: "black"
              border.width: 2
              color: (heading==true)?"red":"green"

              TableView.onPooled: console.log(tabledata + " pooled")
              TableView.onReused: console.log(tabledata + " resused")

              Text {
                  text: tabledata
                  font.pointSize: 12
                  anchors.centerIn: parent
              }
          }
      }
}
