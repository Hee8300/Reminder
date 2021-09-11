//
//  FSTableViewController.swift
//  remember
//
//  Created by 홍태희 on 2021/09/09.
//

import UIKit
import FSCalendar

class FSTableViewController: UITableViewController, FSCalendarDelegate, FSCalendarDataSource {

    let formatter : DateFormatter = {
        let f = DateFormatter()
        f.dateStyle = .long
        f.timeStyle = .short
        f.locale = Locale(identifier: "Ko_kr") //월(April)을 한글로
        return f
    }()
    
    @IBOutlet weak var calendarView: FSCalendar?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        calendarView?.delegate = self
        calendarView?.dataSource = self
        
        calendarView?.appearance.headerDateFormat = "YYYY년 M월"
        calendarView?.locale = Locale(identifier: "ko_KR")
        calendarView?.appearance.headerMinimumDissolvedAlpha = 0.0
        
        //여러개선택, 꾸욱 눌러서 스와이프 동작으로 다중 선택
        calendarView?.allowsMultipleSelection = true
        calendarView?.swipeToChooseGesture.isEnabled = true
        
        // 스와이프 스크롤 방향
        calendarView?.scrollDirection = .vertical
        
        calendarView?.allowsMultipleSelection = true
        calendarView?.swipeToChooseGesture.isEnabled = true
        calendarView?.backgroundColor = UIColor.white
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
}
