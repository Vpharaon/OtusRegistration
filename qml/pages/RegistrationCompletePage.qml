import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "registrationCompletePage"
    allowedOrientations: Orientation.Portrait

    property string login: "fasdfasdf"
    property string phone: "asdfasdf"
    property string lastName: "asdfasdf"
    property string firstName: "asdfasdf"
    property string surname
    property string email: "asdfasdf"

    PageHeader {
        id:header
        objectName: "pageHeader"
        title: "Данные профиля"
    }

    Column {
        anchors.top: header.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.leftMargin: Theme.horizontalPageMargin
        anchors.rightMargin: Theme.horizontalPageMargin
        width: parent.width
        spacing: Theme.paddingMedium

        TextArea {
            anchors.topMargin: Theme.paddingLarge
            horizontalAlignment: TextEdit.AlignHCenter
            text: "Поздравляем!\nВы зарегестрированы!"
            font.pixelSize: Theme.fontSizeExtraLarge
        }

        Label{
            text: "Логин:"
            color: Theme.secondaryColor
            font.pixelSize: Theme.fontSizeExtraSmall
            topPadding: Theme.paddingLarge
        }

        Label{
            text: login
            font.pixelSize: Theme.fontSizeExtraLarge
        }

        Label{
            text: "Номер телефона:"
            color: Theme.secondaryColor
            topPadding: Theme.paddingLarge
            font.pixelSize: Theme.fontSizeExtraSmall
        }

        Label{
            text: phone
            font.pixelSize: Theme.fontSizeExtraLarge
        }

        Label{
            text: "Фамилия:"
            color: Theme.secondaryColor
            topPadding: Theme.paddingLarge
            font.pixelSize: Theme.fontSizeExtraSmall
        }

        Label{
            text: lastName
            font.pixelSize: Theme.fontSizeExtraLarge
        }

        Label{
            text: "Имя:"
            color: Theme.secondaryColor
            topPadding: Theme.paddingLarge
            font.pixelSize: Theme.fontSizeExtraSmall
        }

        Label{
            text: firstName
            font.pixelSize: Theme.fontSizeExtraLarge
        }

        Label{
            text: "Отчество:"
            visible: surname.length > 0
            color: Theme.secondaryColor
            topPadding: Theme.paddingLarge
            font.pixelSize: Theme.fontSizeExtraSmall
        }

        Label{
            text: surname
            visible: surname.length > 0
            font.pixelSize: Theme.fontSizeExtraLarge
        }
    }
}
