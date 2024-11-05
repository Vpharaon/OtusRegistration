import QtQuick 2.0
import Sailfish.Silica 1.0

Dialog {

    DialogHeader {
        id: header
        acceptText: "Сохранить"
        cancelText: "Отмена"
    }

    SilicaListView {
        anchors.top: header.bottom
        header: PageHeader { title: "Увлечения" }
        anchors.fill: parent
        delegate: ListItem {
            TextSwitch {
                text: name
                checked: checkItem
                anchors.verticalCenter: parent.verticalCenter
                x: Theme.horizontalPageMargin
            }
        }
        model: ListModel {
            ListElement{
                name: "Спорт"
                checkItem: false
            }
            ListElement{
                name: "Чтение"
                checkItem: false
            }
            ListElement{
                name: "Музыка"
                checkItem: false
            }
            ListElement{
                name: "Прогулки на природе"
                checkItem: false
            }
        }

        VerticalScrollDecorator{}
    }

}
