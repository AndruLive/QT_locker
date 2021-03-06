import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 600
    height: 400
    title: qsTr("Lock")

    Row{
        Numberpad {
            id: numberpad

            onButtonPressed: {
                console.log(id)
                dashboard.numberInput(id);
            }

            onEnterPressed: {
                console.log("enter")
                dashboard.startProgramming();
            }

            onClearPressed: {
                console.log("clear")
                dashboard.startUnlocking();
            }
        }

        LockDashboard{
            id: dashboard
        }

    }
}
