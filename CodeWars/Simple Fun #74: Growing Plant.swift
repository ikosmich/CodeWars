//Task
//
//Each day a plant is growing by upSpeed meters. 
//Each night that plant's height decreases by downSpeed meters due to the lack of sun heat. 
//Initially, plant is 0 meters tall. We plant the seed at the beginning of a day. 
//We want to know when the height of the plant will reach a certain level.
//
//Example
//
//For upSpeed = 100, downSpeed = 10 and desiredHeight = 910, the output should be 10.

func growingPlant(_ upSpeed: Int, _ downSpeed: Int, _ desiredHeight: Int) -> Int {
    var height = desiredHeight - upSpeed
    var count = 1
    while height > 0 {
        height -= upSpeed - downSpeed
        count += 1
    }
    return count
}