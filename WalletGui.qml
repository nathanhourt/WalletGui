import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Window 2.0
import QtQuick.Layouts 1.0

Rectangle {
    width: 700
    height: 480
    color: globalPalette.window

    property int roundingDigits: 2

    SystemPalette {
        id: globalPalette
        colorGroup: SystemPalette.Active
    }

    GridLayout {
        id: walletLayout
        anchors.fill: parent
        columns: 3

        Label {
            text: qsTr("Balance") + ": " + (12.53).toFixed(roundingDigits)
        }
        Item {
            Layout.fillWidth: true
        }
        Button {
            Layout.preferredWidth: parent.width / 5
            text: qsTr("Send Payment")
        }

        Label {
            text: qsTr("Pending") + ": " + (1.50).toFixed(roundingDigits)
        }
        Item {
            Layout.fillWidth: true
        }
        Button {
            Layout.preferredWidth: parent.width / 5
            text: qsTr("Request Payment")
        }

        TableView {
            id: historyTable
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.columnSpan: parent.columns

            TableViewColumn {
                title: qsTr("Status")
                role: "status"
                width: historyTable.width / 8
            }
            TableViewColumn {
                title: qsTr("Date")
                role: "date"
                width: historyTable.width / 8
            }
            TableViewColumn {
                title: qsTr("Memo")
                role: "memo"
                width: historyTable.width / 2
            }
            TableViewColumn {
                title: qsTr("Amount")
                role: "amount"
                width: historyTable.width / 8
            }
            TableViewColumn {
                title: qsTr("Balance")
                role: "balance"
                width: historyTable.width / 8
            }
        }
    }
}
