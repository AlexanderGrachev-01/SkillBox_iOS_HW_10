//
//  TableTaskViewController.swift
//  HW_10
//
//  Created by Александр Грачев on 08.05.2021.
//

import UIKit

struct SettingsCategory {
    var category = ""
    var settingsNames: [String] = []
    var settingsImageNames: [String] = []
}

class SettingsCategoryCreate {
    static func settingsCategory() -> [SettingsCategory] {
        return [
            SettingsCategory(category: "connection", settingsNames: ["Авиарежим", "Wi-Fi", "Bluetooth", "Сотовая связь", "Режим модема"], settingsImageNames: ["airplane", "wifi", "bolt.horizontal.fill", "antenna.radiowaves.left.and.right", "personalhotspot"]),
            SettingsCategory(category: "interaction", settingsNames: ["Уведомления", "Звуки, тактильные сигналы", "Не беспокоить", "Экранное время"], settingsImageNames: ["music.note", "speaker.wave.3", "moon.fill", "hourglass"]),
            SettingsCategory(category: "main", settingsNames: ["Основные", "Пункт управления", "Экран и яркость", "Экран домой", "Универсальный доступ", "Обои", "Siri и Поиск", "Face ID и код-пароль", "Экстренный вызов – SOS"], settingsImageNames: ["gear", "crop", "textformat.size", "house", "binoculars.fill", "wand.and.rays", "ellipsis.bubble", "faceid", "lightbulb.fill"])
        ]
    }
}

class TableTaskViewController: UIViewController {
    
    var settingCategory = SettingsCategoryCreate.settingsCategory()
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension TableTaskViewController: UITableViewDataSource, UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        settingCategory.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "  "
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingCategory[section].settingsImageNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingCell") as! SettingsTableViewCell
        cell.SettingsLabel.text = settingCategory[indexPath.section].settingsNames[indexPath.row]
        cell.SettingsImageView.image = UIImage(systemName: settingCategory[indexPath.section].settingsImageNames[indexPath.row])
        return cell
    }
}
