//The rgb function is incomplete. Complete it so that passing in RGB decimal values will result in a hexadecimal representation being returned. 
//Valid decimal values for RGB are 0 - 255. 
//Any values that fall out of that range must be rounded to the closest valid value.
//Note: Your answer should always be 6 characters long, the shorthand with 3 will not work here.


func rgb(_ r: Int, _ g: Int, _ b: Int) -> String {
  var rgb: [Int] = []
    for num in [r,g,b] {
      if num < 0 {
        rgb.append(0)
      } else if num > 255 {
        rgb.append(255)
      } else {
        rgb.append(num)
      }
    }
  return rgb.map { String(format: "%02X", $0) }.joined()
}