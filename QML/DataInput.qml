import QtQuick 1.0
Item {
    property alias units: units.text
    property alias instructions: instructions.text

    Textfield {
        id: heightTextField
        width: 125
        text: ""

        Text {
        	id: instructions
            text: 'Instructions'
            anchors.top: parent.top
            anchors.topMargin: -20
        }

        Text {
        	id: units
            text: "units"
            anchors.left: parent.right
            anchors.leftMargin: 15
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20
            font.pointSize: 16             
		}

   }

    Image {
        source: "images/buttons/Save_Btn.png"
        anchors.left: heightTextField.right
        anchors.leftMargin: 60
        anchors.verticalCenter: heightTextField.verticalCenter
        anchors.verticalCenterOffset: -4
    }

}