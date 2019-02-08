import UIKit

struct item {
    var groupId:Int = 0
    var orderIndex:Int = 0
}
let SEARCH_ID = 45
var arr = [
    item(groupId: SEARCH_ID, orderIndex: 5),
    item(groupId: SEARCH_ID, orderIndex: 9),
    item(groupId: SEARCH_ID, orderIndex: 78),
    item(groupId: SEARCH_ID, orderIndex: 73),
    item(groupId: SEARCH_ID, orderIndex: 2),
    item(groupId: SEARCH_ID, orderIndex: 723),
    item(groupId: SEARCH_ID, orderIndex: 1),
    item(groupId: SEARCH_ID, orderIndex: 34524323),
    item(groupId: 1000, orderIndex: 343),
    item(groupId: 1000, orderIndex: 1),
    item(groupId: 1000, orderIndex: 0),
    item(groupId: 1000, orderIndex: 2),

]




for i in 1...arr.count - 1{
    let item = arr[i]
    var j = i - 1
    
    if arr[j+1].groupId != 1000 {continue} //
    while j >= 0 && item.orderIndex < arr[j].orderIndex {
            arr[j + 1] = arr[j]
            j -= 1

    }
    arr[j + 1] = item
}

for a in arr {
    print(a)
}

