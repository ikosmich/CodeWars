func movie(card: Double, ticket: Double, perc: Double) -> Int {
  var count = 1.0
  var systemA = ticket * count
  var systemBticketPrice = ticket * perc
  var systemB = card + systemBticketPrice
  while systemA <= systemB.rounded(.up) {
    count += 1
    systemA += ticket
    systemBticketPrice *= perc
    systemB = systemB + systemBticketPrice
  }
  return Int(count)
}