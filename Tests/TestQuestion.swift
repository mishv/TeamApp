//
//  TestQuestion.swift
//  Tests
//
//  Created by Nikita Entin on 07.01.2021.
//

import Foundation

struct TestQuestion {
    
    private(set) var question: String
    private(set) var numberOfTest: Int // номер теста для выбора нужных вопросов для лекций
    private(set) var answer1: [String: Bool]?
    private(set) var answer2: [String: Bool]?
    private(set) var answer3: [String: Bool]?
    private(set) var answer4: [String: Bool]?
    
    
    static func getQuestion() -> [TestQuestion] {
        return [
            TestQuestion(question: "Что такое bundleID?",
                         numberOfTest: 1,
                         answer1: ["Тоже самое, что и AppleID": false],
                         answer2: ["Уникальный идентификатор приложения": true],
                         answer3: ["Название приложения": false],
                         answer4: ["ID пользователя приложения": false]),
            
            TestQuestion(question: "Как расшифровывается UI?",
                         numberOfTest: 1,
                         answer1: ["User Info": false],
                         answer2: ["User Interface": true],
                         answer3: ["Unit Interface": false],
                         answer4: ["Unit Information": false]),
            
            TestQuestion(question: "Может ли быть у UILabel несколько строк?",
                         numberOfTest: 1,
                         answer1: ["Да, всегда": true],
                         answer2: ["Нет": false],
                         answer3: ["Да, но зависит от свойств": false]),
            
            TestQuestion(question: "Что значит префикс NS в названии классов?",
                         numberOfTest: 1,
                         answer1: ["Название библиотеки": false],
                         answer2: ["Признак интерфейсов": false],
                         answer3: ["От них нельзя наследоваться": false],
                         answer4: ["Пришли из Objective-C": true]),
            
            TestQuestion(question: "Какой тип ссылки лучше использовать для UI элемента",
                         numberOfTest: 1,
                         answer1: ["weak": false],
                         answer2: ["strong": true],
                         answer3: ["static": false],
                         answer4: ["никакой": false]),
            
            TestQuestion(question: "Будут ли изменяться свойства UI элемента, если isHidden == true?",
                         numberOfTest: 1,
                         answer1: ["Да": true],
                         answer2: ["Нет": false],
                         answer3: ["Зависит от версии iOS": false]),
            
            TestQuestion(question: "В каком параметре хранится текущее значение UISlider?",
                         numberOfTest: 1,
                         answer1: ["minValue": false],
                         answer2: ["parameter": false],
                         answer3: ["value": true],
                         answer4: ["currentValue": false]),
            
            TestQuestion(question: "Как называется серый текст по умолчанию в UITextField?",
                         numberOfTest: 1,
                         answer1: ["text": false],
                         answer2: ["defaultText": false],
                         answer3: ["title": false],
                         answer4: ["placeholder": true]),
            
            TestQuestion(question: "Какой тип у поля text класса UITextField?",
                         numberOfTest: 1,
                         answer1: ["String": false],
                         answer2: ["String?": true],
                         answer3: ["Int": false],
                         answer4: ["Float": false]),
            
            TestQuestion(question: " Что такое segue?",
                         numberOfTest: 2,
                         answer1: ["id viewController": false],
                         answer2: ["инструмент перехода между viewController": true],
                         answer3: ["Заголовок viewController": false]),
            
            TestQuestion(question: "Какого типа segue нет?",
                         numberOfTest: 2,
                         answer1: ["push": false],
                         answer2: ["present": false],
                         answer3: ["move": true],
                         answer4: ["modal": false]),
            
            TestQuestion(question: "Модальное открытие по умолчанию ViewController происходит",
                         numberOfTest: 2,
                         answer1: ["Слева направо": false],
                         answer2: ["Справа налево": false],
                         answer3: ["Сверху вниз": false],
                         answer4: ["Снизу вверх": true]),
            
            TestQuestion(question: "Можно ли модально открыть ViewController на весь экран?",
                         numberOfTest: 2,
                         answer1: ["да": true],
                         answer2: ["да, но только в ios < 13": false],
                         answer3: ["нет": false]),
            
            TestQuestion(question: "Можно ли попасть на один экран из нескольких экранов?",
                         numberOfTest: 2,
                         answer1: ["да": true],
                         answer2: ["нет": false]),
            
            TestQuestion(question: "Какой тип данных вернет конструкция string is String",
                         numberOfTest: 2,
                         answer1: ["String": false],
                         answer2: ["Bool": true],
                         answer3: ["Bool?": false],
                         answer4: ["String?": false]),
            
            TestQuestion(question: "Какой тип данных вернет конструкция string as? String",
                         numberOfTest: 2,
                         answer1: ["String": false],
                         answer2: ["Bool": false],
                         answer3: ["Bool?": false],
                         answer4: ["String?": true]),
            
            TestQuestion(question: " Можно ли настраивать переходы в коде?",
                         numberOfTest: 2,
                         answer1: ["да": true],
                         answer2: ["нет": false]),
            
            TestQuestion(question: "Как расшифровывается MVC",
                         numberOfTest: 3,
                         answer1: ["Model-View-Cell": false],
                         answer2: ["Module-View-Controller": false],
                         answer3: ["Module-View-Cell": false],
                         answer4: ["Model-View-Controller": true]),
            
            TestQuestion(question: "За что ответственна Model?",
                         numberOfTest: 3,
                         answer1: ["Хранит и предоставляет данные": false],
                         answer2: ["Отвечает за отображение данных модели пользователю": false],
                         answer3: ["Интерпретирует действия пользователя": false],
                         answer4: ["Обновляет экран": true]),
            
            TestQuestion(question: "За что ответственна View?",
                         numberOfTest: 3,
                         answer1: ["Хранит и предоставляет данные": false],
                         answer2: ["Отвечает за отображение данных модели пользователю": true],
                         answer3: ["Интерпретирует действия пользователя": false],
                         answer4: ["Обновляет экран": false]),
            
            TestQuestion(question: "За что ответственен Controller?",
                         numberOfTest: 3,
                         answer1: ["Хранит и предоставляет данные": false],
                         answer2: ["Отвечает за отображение данных модели пользователю": false],
                         answer3: ["Интерпретирует действия пользователя": true],
                         answer4: ["Обновляет экран": false]),
            
            TestQuestion(question: "Какой связи в MVC нет?",
                         numberOfTest: 3,
                         answer1: ["Controller-View": false],
                         answer2: ["Controller-Model": false],
                         answer3: ["Model-View": true]),
            
            TestQuestion(question: "Есть два лейбла A и B. А отображается полностью, B нет. Это можно получить, если",
                         numberOfTest: 3,
                         answer1: ["у A меньше значение compression resistance priority": false],
                         answer2: ["у A больше значение compression resistance priority": true],
                         answer3: ["у A меньше значение content hugging priority": false],
                         answer4: ["у A больше значение content hugging priority": false]),
            
            TestQuestion(question: "Есть два лейбла A и B. А отображается полностью, B тоже. B занимает свободное пространство, A - в пределах контента. Это можно получить, если",
                         numberOfTest: 3,
                         answer1: ["у A меньше значение compression resistance priority": false],
                         answer2: ["у A больше значение compression resistance priority": false],
                         answer3: ["у A меньше значение content hugging priority": false],
                         answer4: ["у A больше значение content hugging priority": true]),
            
            TestQuestion(question: "Можно ли завязать несколько UI элементов на один IBOutlet?",
                         numberOfTest: 3,
                         answer1: ["Да": true],
                         answer2: ["Нет": false]),
            
            TestQuestion(question: "Можно ли завязать несколько UI элементов на один IBAction?",
                         numberOfTest: 3,
                         answer1: ["Да": true],
                         answer2: ["Нет": false]),
            
            TestQuestion(question: "Может ли создать Extension для протокола?",
                         numberOfTest: 4,
                         answer1: ["Да": true],
                         answer2: ["Нет": false]),
            
            TestQuestion(question: "Ключевой слово, которым обозначается protocol?",
                         numberOfTest: 4,
                         answer1: ["array": false],
                         answer2: ["func": false],
                         answer3: ["interface": false],
                         answer4: ["protocol": true]),
            
            TestQuestion(question: "Может ли пользовательский тип имплементировать больше 1 протокола?",
                         numberOfTest: 4,
                         answer1: ["Да": true],
                         answer2: ["Нет": false]),
            
            TestQuestion(question: "Как маркируются свойства протокола, значения которых можно только получить?",
                         numberOfTest: 4,
                         answer1: ["{ set }": false],
                         answer2: ["{ get set }": false],
                         answer3: ["{ get }": true]),
            
            TestQuestion(question: "При написании метода внутри протокола, мы НЕ пишем этого",
                         numberOfTest: 4,
                         answer1: ["Имя метода": false],
                         answer2: ["Фигурные скобки": true],
                         answer3: ["Круглые скобки": false],
                         answer4: ["Ключевое слово func": false]),
            
            TestQuestion(question: "Является ли протокол типом?",
                         numberOfTest: 4,
                         answer1: ["Да": true],
                         answer2: ["Нет": false]),
            
            TestQuestion(question: "Можем ли мы использовать протокол как тип параметра или возвращаемый тип в функции, методе, инициализаторе?",
                         numberOfTest: 4,
                         answer1: ["Да": true],
                         answer2: ["Нет": false]),
            
            TestQuestion(question: "Должны ли мы писать имя протоколов с большой буквы?",
                         numberOfTest: 4,
                         answer1: ["Да": true],
                         answer2: ["Нет": false],
                         answer3: ["На свое усмотрение": false]),
            
            TestQuestion(question: "Если тип полностью удовлетворяет требованиям протокола, принимает ли он его автоматически?",
                         numberOfTest: 4,
                         answer1: ["Да": false],
                         answer2: ["Нет": true]),
            
            TestQuestion(question: "Каким оператором вы можете привести к определенному протоколу?",
                         numberOfTest: 4,
                         answer1: ["is": false],
                         answer2: ["switch": false],
                         answer3: ["as": true],
                         answer4: ["if": false])
        ]
    }
}



