
// placeholder

import Foundation

var finalanswer = 0

let info = ProcessInfo.processInfo
let tic = info.systemUptime



let elapsed = (info.systemUptime - tic)

print("Answer:\t", finalanswer)
print("Took:\t", elapsed)