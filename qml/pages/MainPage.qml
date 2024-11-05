import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.Portrait

    PageHeader {
        id: header
        objectName: "pageHeader"
        title: qsTr("RegistrationApp")
    }

    Column {
        anchors.top: header.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.leftMargin: Theme.horizontalPageMargin
        anchors.rightMargin: Theme.horizontalPageMargin
        anchors.centerIn: parent
        width: parent.width
        spacing: Theme.paddingLarge

        TextField{
            id: loginInput
            placeholderText: "Логин"
            label: "Логин должен быть не менее 6 символов "
            acceptableInput: text.length >= 6
            focus: true
            EnterKey.iconSource: "image://theme/icon-m-enter-next"
            EnterKey.enabled: acceptableInput
            EnterKey.onClicked: phoneInput.focus = true
        }

        TextField {
            id: phoneInput
            maximumLength: 12
            placeholderText: "Номер телефона"
            label: "Формат телефона +79991234567"
            validator: RegExpValidator { regExp: /^\+7[0-9]{10}$/ }
            inputMethodHints: Qt.ImhDialableCharactersOnly
            EnterKey.iconSource: "image://theme/icon-m-enter-close"
            EnterKey.enabled: acceptableInput
            EnterKey.onClicked: focus = false
        }

        Button{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Зарегестрироваться"
            enabled: loginInput.acceptableInput && phoneInput.acceptableInput
            onClicked: pageStack.push(Qt.resolvedUrl("RegistrationStep2Page.qml"), {
                                          "login": loginInput.text,
                                          "phone": phoneInput.text
                                      })
        }
    }
}
