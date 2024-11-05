import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "registrationStep2Page"
    allowedOrientations: Orientation.Portrait

    property string login
    property string phone

    PageHeader {
        id:header
        objectName: "pageHeader"
        title: "Данные аккаунта"
    }

    Column {
        anchors.top: header.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.leftMargin: Theme.horizontalPageMargin
        anchors.rightMargin: Theme.horizontalPageMargin
        width: parent.width
        spacing: Theme.paddingMedium

        TextField{
            id: lastName
            placeholderText: "Фамилия"
            acceptableInput: text.length > 0
            focus: true
            EnterKey.iconSource: "image://theme/icon-m-enter-next"
            EnterKey.enabled: acceptableInput
            EnterKey.onClicked: firstName.focus = true
        }

        TextField{
            id: firstName
            placeholderText: "Имя"
            acceptableInput: text.length > 0
            EnterKey.iconSource: "image://theme/icon-m-enter-next"
            EnterKey.enabled: acceptableInput
            EnterKey.onClicked: surname.focus = true
        }

        TextField{
            id: surname
            placeholderText: "Отчество"
            EnterKey.iconSource: "image://theme/icon-m-enter-next"
            EnterKey.onClicked: email.focus = true
        }

        TextField{
            id: email
            placeholderText: "Email"
            description: "Адресс электронной почты"
            inputMethodHints: Qt.ImhEmailCharactersOnly
            validator: RegExpValidator{regExp: /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/}
            EnterKey.iconSource: "image://theme/icon-m-enter-close"
            EnterKey.enabled: acceptableInput
            EnterKey.onClicked: focus = false
        }

        TextSwitch{
            id: personalDataSwitch
            text: "Согласие на обработку персональных данных"
            checked: true
        }

        TextSwitch{
            id: emailSwitch
            text: "Подписаться на email рассылку"
        }

        SecondaryButton {
            text: "Мои увлечения"
            color: Theme.highlightColor
            onClicked: {
                var dialog = pageStack.push(Qt.resolvedUrl("RegistrationStep2HobiesDialog.qml"))
                dialog.accepted.connect(function(){

                })
            }
        }

        Button{
            id: saveButton
            text: "Сохранить"
            anchors.horizontalCenter: parent.horizontalCenter
            enabled: lastName.acceptableInput && firstName.acceptableInput && surname.acceptableInput && email.acceptableInput && personalDataSwitch.checked
            onClicked: pageStack.replace(Qt.resolvedUrl("RegistrationCompletePage.qml"), {
                                             "login": login,
                                             "phone": phone,
                                             "lastName": lastName.text,
                                             "firstName": firstName.text,
                                             "surname": surname.text,
                                             "email": email.text
                                         })
        }
    }
}
