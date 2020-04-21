// Note: Run this playground from within the RWMRecurrenceRule project.

import Foundation
import RWMRecurrenceRule

// TODO - coming soon
var dateComps = DateComponents(calendar: Calendar(identifier: Calendar.Identifier.gregorian),year:2020, month: 4, day: 18,hour: 6)

dateComps.timeZone = TimeZone.current
let startDate = Calendar.current.date(from: dateComps)!
let rule = RWMRuleParser().parse(rule: "RRULE:FREQ=WEEKLY")!

RWMRuleScheduler().enumerateDates(with: rule, startingFrom: startDate) { (date, stop) in
    print("Date: \(date)")
}
print("Done")
