import QtQuick 1.0
import 'colibri'
Image {
    id: sensorTabs
    anchors.right: parent.right
    anchors.rightMargin: 34
    anchors.left: parent.left
    anchors.leftMargin: 34
    anchors.bottom: parent.bottom
    anchors.bottomMargin: 34
    source: "images/tab_vitals/UI_Vitals_Tab1.png"

    Item {
        id: heightWeight
        anchors.fill: parent
        visible: true
        z: 100

        Image {
            id: heightStepbox
            source: "images/tab_vitals/UI_Vitals_tab1_StepBox.png"
            anchors.top: parent.top
            anchors.topMargin: 50
            anchors.right: parent.right
            anchors.rightMargin: 30
            z: 100

        DataInput {
            //anchors.right: parent.right
            //anchors.rightMargin: 20
            anchors.verticalCenter: heightStepbox.verticalCenter
            anchors.verticalCenterOffset: -30
            anchors.horizontalCenter: heightStepbox.horizontalCenter
            anchors.horizontalCenterOffset: -70
        }

/*          Textfield {
                id: heightInput
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                width: 125
                visible: true
                text: "Height"
            }

            Image {
                source: "images/buttons/Save_Btn.png"
                anchors.left: heightInput.right
                anchors.leftMargin: 20
                anchors.verticalCenter: heightInput.verticalCenter
            }*/

        }

    Image {
        id: weightStepbox
        source: "images/tab_vitals/UI_Vitals_tab1_StepBox.png"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 50
        anchors.right: parent.right
        anchors.rightMargin: 30
        z: 100

        Textfield {
            id: weightInput
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            width: 125
            visible: true
            text: "Weight"
         /* Old code for the withings scale 

            Rectangle {
                    id: weightButton
                    x: 50
                    y: 50
                    z: 100
                    color: (weightScale.hasrun ? (weightScale.running ? '#D7853D' : '#6AA535') : '#FF0000')
                    border.color: '#666666'
                    height: 100
                    width: 100
                    Text {
                        x: 130
                        y: 35
                        text: 'Red: Step on scale\nOrange: Stay on scale\nGreen: Weight has been recorded'
                    } 
            }*/
        }

        Image {
            source: "images/buttons/Save_Btn.png"
            anchors.left: weightInput.right
            anchors.leftMargin: 20
            anchors.verticalCenter: weightInput.verticalCenter
        }

    }

    }
    Item {
        id: pulse
        anchors.fill: parent
        visible: false
        z: 100
        Image {
            id: pulseStepBox
            source: "images/tab_vitals/UI_Vitals_tab1_StepBox.png"
            anchors.top: parent.top
            anchors.topMargin: 50
            anchors.right: parent.right
            anchors.rightMargin: 30
            visible: true

/*  Old code for the SpO2 sensor              

        Image {
            id: get_bp_button
            anchors.centerIn: parent
            source: 'images/UI_Enter_Btn.png'
            visible: true
            z: 100
            MouseArea {
                anchors.fill: parent
                onPressed: parent.source = 'images/UI_Enter_Active_Btn.png'
                onReleased: parent.source = 'images/UI_Enter_Btn.png'
                onClicked: {
                    visit.read_pulse_sensor()
                    pulseData.text = visit.v_pulse_rate
                }

            }
        Text {
            id: pulseData
            visible: true
            anchors.top: get_bp_button.bottom
            anchors.topMargin: 10
            text: "No measurement"
        }
        Text {
            id: pulseInstructions
            visible: true
            anchors.bottom: get_bp_button.top
            anchors.bottomMargin: 10
            anchors.horizontalCenter: get_bp_button.horizontalCenter
            text: "Please place the patients finger on the sensor and wait up to 30 seconds."
        }
    } */  
            Textfield {
                id: pulseInput
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                width: 125
                visible: true
                text: "Pulse"
            }
            Image {
                source: "images/buttons/Save_Btn.png"
                anchors.left: pulseInput.right
                anchors.leftMargin: 20
                anchors.verticalCenter: pulseInput.verticalCenter
            }
        }
    }
    Item {
        id: temperature
        visible: false
        anchors.fill: parent
        z: 100
        Image {
            id: temperatureStepBox
            source: "images/tab_vitals/UI_Vitals_tab1_StepBox.png"
            anchors.top: parent.top
            anchors.topMargin: 50
            anchors.right: parent.right
            anchors.rightMargin: 30
            Textfield {
                anchors.centerIn: parent
                width: 125
                text: ""
                Text {
                    text: 'Enter Temperature'
                    anchors.top: parent.top
                    anchors.topMargin: -20
                }
                Text {
                    text: "Celsius"
                    anchors.left: parent.right
                    anchors.leftMargin: 15
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 20
                    font.pointSize: 16
                }
            }
        }
    }
    Item {
        id: bloodPressure
        visible: false
        anchors.fill:parent
        Column{
            anchors.fill: parent
            Image {
                id: bloodPressureInstructionBox
                source: "images/tab_vitals/UI_Vitals_tab1_StepBox.png"
                anchors.top: parent.top
                anchors.topMargin: 50
                anchors.right: parent.right
                anchors.rightMargin: 30


                Textfield {
                    id: bpInput
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    width: 125
                    visible: true
                    text: "Blood Pressure"
                }
                Image {
                    source: "images/buttons/Save_Btn.png"
                    anchors.left: bpInput.right
                    anchors.leftMargin: 20
                    anchors.verticalCenter: bpInput.verticalCenter
                }
            }
        }   
    }
    Item {
        id: stethoscope
        visible: false
    }

    MouseArea {
        id: click_HeightWeight
        x: 8
        y: 8
        width: 86
        height: 103
        onClicked:{ 
            sensorTabs.state = 'heightWeight'             
        }
    }

 MouseArea {
     id: clickPulse
     x: 8
     y: 117
     width: 86
     height: 106
     onClicked: {
         sensorTabs.state = 'pulse'   
    }
}
 MouseArea {
     id: clickTemperature
     x: 8
     y: 229
     width: 86
     height: 105
     onClicked: {
        sensorTabs.state = 'temperature'
    }  
}
 MouseArea {
     id: clickBloodPressure
     x: 8
     y: 340
     width: 86
     height: 105
     onClicked: {
        sensorTabs.state = 'bloodPressure'
    }
 }

 MouseArea {
     id: clickStethoscope
     x: 8
     y: 451
     width: 86
     height: 107
     onClicked: parent.source = "images/tab_vitals/UI_Vitals_Tab5.png"
 }

 Image {
     id: imgHeightWeight
     x: 27
     y: 40
     source: "images/tab_vitals/UI_Vitals_HeightWeightIcon.png"
 }

 Image {
     id: imgPulse
     x: 27
     y: 147
     source: "images/tab_vitals/UI_Vitals_BloodPressIcon.png"
 }

 Image {
     id: imgTemperature
     x: 41
     y: 259
     source: "images/tab_vitals/UI_Vitals_TempIcon.png"
 }

 Image {
     id: imgBloodPressure
     x: 29
     y: 370
     source: "images/tab_vitals/UI_Vitals_BloodPressureIcon.png"
 }

 Image {
     id: imgStethoscope
     x: 33
     y: 482
     source: "images/tab_vitals/UI_Vitals_StethoIcon.png"
 }
//}
states: [
    State {
        name: 'heightWeight'
        PropertyChanges {
            target: heightWeight
            visible: true
        }
        PropertyChanges {
            target: pulse
            visible: false
        }
        PropertyChanges {
            target: temperature
            visible: false
        }
        PropertyChanges {
            target: bloodPressure
            visible: false
        }
        PropertyChanges {
            target: stethoscope
            visible: false
        }            
        PropertyChanges {
            target: sensorTabs
            source: "images/tab_vitals/UI_Vitals_Tab1.png"
        }
    },
    State {
        name: 'pulse'
        PropertyChanges {
            target: heightWeight
            visible: false
        }
        PropertyChanges {
            target: pulse
            visible: true
        }
        PropertyChanges {
            target: temperature
            visible: false
        }
        PropertyChanges {
            target: bloodPressure
            visible: false
        }
        PropertyChanges {
            target: stethoscope
            visible: false
        }
        PropertyChanges {
            target: sensorTabs
            source: "images/tab_vitals/UI_Vitals_Tab2.png"
        }
    },
    State {
        name: 'temperature'
        PropertyChanges {
            target: heightWeight
            visible: false
        }
        PropertyChanges {
            target: pulse
            visible: false
        }
        PropertyChanges {
            target: temperature
            visible: true
        }
        PropertyChanges {
            target: bloodPressure
            visible: false
        }
        PropertyChanges {
            target: stethoscope
            visible: false
        }
        PropertyChanges {
            target: sensorTabs
            source: "images/tab_vitals/UI_Vitals_Tab3.png"
        }
    },
    State {
        name: "bloodPressure" 
       PropertyChanges {
            target: heightWeight
            visible: false
        }
        PropertyChanges {
            target: pulse
            visible: false
        }
        PropertyChanges {
            target: temperature
            visible: false
        }
        PropertyChanges {
            target: bloodPressure
            visible: true
        }
        PropertyChanges {
            target: stethoscope
            visible: false
        }
        PropertyChanges {
            target: sensorTabs
            source: "images/tab_vitals/UI_Vitals_Tab4.png"
        }
    }
]
}


