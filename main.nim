import times, strutils, random, encrypt, decrypt

const count: int = 1000000
var balance: float = 0.0

template benchmark*(benchmarkName: string, code: untyped) =
  block:
    let t0 = cpuTime()
    for i in 0..<count:
      code
    let elapsed = cpuTime() - t0 - balance
    echo "CPU Time [", benchmarkName, "] ", elapsed.formatFloat(format = ffDecimal, precision = 3), "s", ", per cycle: ", int (elapsed * (1000000000 / count)), " ns, ", ((float count) / elapsed / 65536.0).formatFloat(format = ffDecimal, precision = 3), " MB/s"

when isMainModule:
  var data: seq[array[16, uint8]]
  for i in 0..<10000:
    data.add([ rand(uint8), rand(uint8), rand(uint8), rand(uint8), rand(uint8), rand(uint8), rand(uint8), rand(uint8), rand(uint8), rand(uint8), rand(uint8), rand(uint8), rand(uint8), rand(uint8), rand(uint8), rand(uint8) ])

  let t0 = cpuTime()
  for i in 0..<count:
    discard sample(data)
    discard sample(data)
  balance = cpuTime() - t0
  echo "const balance: ", 1000 * balance, " ms"

  benchmark "encrypt":
    discard encrypt(sample(data), sample(data))

  benchmark "decrypt":
    discard decrypt(sample(data), sample(data))

  benchmark "encrypt / decrypt":
    let val = sample(data)
    let key = sample(data)
    doAssert val == decrypt(encrypt(val, key), key)

# > nim c -d:danger --opt:speed -r .\main.nim
# const balance: 35.0 ms
# CPU Time [encrypt] 0.838s, per cycle: 838 ns, Megabyte per second: 18.646
# CPU Time [decrypt] 1.488s, per cycle: 1488 ns, Megabyte per second: 10.501
# CPU Time [encrypt / decrypt] 2.348s, per cycle: 2348 ns, Megabyte per second: 6.655