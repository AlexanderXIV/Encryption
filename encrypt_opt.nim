const save_box: array[256, uint8] = [
  0x63'u8, 0x7C'u8, 0x77'u8, 0x7B'u8, 0xF2'u8, 0x6B'u8, 0x6F'u8, 0xC5'u8, 0x30'u8, 0x01'u8, 0x67'u8, 0x2B'u8, 0xFE'u8, 0xD7'u8, 0xAB'u8, 0x76'u8,
  0xCA'u8, 0x82'u8, 0xC9'u8, 0x7D'u8, 0xFA'u8, 0x59'u8, 0x47'u8, 0xF0'u8, 0xAD'u8, 0xD4'u8, 0xA2'u8, 0xAF'u8, 0x9C'u8, 0xA4'u8, 0x72'u8, 0xC0'u8,
  0xB7'u8, 0xFD'u8, 0x93'u8, 0x26'u8, 0x36'u8, 0x3F'u8, 0xF7'u8, 0xCC'u8, 0x34'u8, 0xA5'u8, 0xE5'u8, 0xF1'u8, 0x71'u8, 0xD8'u8, 0x31'u8, 0x15'u8,
  0x04'u8, 0xC7'u8, 0x23'u8, 0xC3'u8, 0x18'u8, 0x96'u8, 0x05'u8, 0x9A'u8, 0x07'u8, 0x12'u8, 0x80'u8, 0xE2'u8, 0xEB'u8, 0x27'u8, 0xB2'u8, 0x75'u8,
  0x09'u8, 0x83'u8, 0x2C'u8, 0x1A'u8, 0x1B'u8, 0x6E'u8, 0x5A'u8, 0xA0'u8, 0x52'u8, 0x3B'u8, 0xD6'u8, 0xB3'u8, 0x29'u8, 0xE3'u8, 0x2F'u8, 0x84'u8,
  0x53'u8, 0xD1'u8, 0x00'u8, 0xED'u8, 0x20'u8, 0xFC'u8, 0xB1'u8, 0x5B'u8, 0x6A'u8, 0xCB'u8, 0xBE'u8, 0x39'u8, 0x4A'u8, 0x4C'u8, 0x58'u8, 0xCF'u8,
  0xD0'u8, 0xEF'u8, 0xAA'u8, 0xFB'u8, 0x43'u8, 0x4D'u8, 0x33'u8, 0x85'u8, 0x45'u8, 0xF9'u8, 0x02'u8, 0x7F'u8, 0x50'u8, 0x3C'u8, 0x9F'u8, 0xA8'u8,
  0x51'u8, 0xA3'u8, 0x40'u8, 0x8F'u8, 0x92'u8, 0x9D'u8, 0x38'u8, 0xF5'u8, 0xBC'u8, 0xB6'u8, 0xDA'u8, 0x21'u8, 0x10'u8, 0xFF'u8, 0xF3'u8, 0xD2'u8,
  0xCD'u8, 0x0C'u8, 0x13'u8, 0xEC'u8, 0x5F'u8, 0x97'u8, 0x44'u8, 0x17'u8, 0xC4'u8, 0xA7'u8, 0x7E'u8, 0x3D'u8, 0x64'u8, 0x5D'u8, 0x19'u8, 0x73'u8,
  0x60'u8, 0x81'u8, 0x4F'u8, 0xDC'u8, 0x22'u8, 0x2A'u8, 0x90'u8, 0x88'u8, 0x46'u8, 0xEE'u8, 0xB8'u8, 0x14'u8, 0xDE'u8, 0x5E'u8, 0x0B'u8, 0xDB'u8,
  0xE0'u8, 0x32'u8, 0x3A'u8, 0x0A'u8, 0x49'u8, 0x06'u8, 0x24'u8, 0x5C'u8, 0xC2'u8, 0xD3'u8, 0xAC'u8, 0x62'u8, 0x91'u8, 0x95'u8, 0xE4'u8, 0x79'u8,
  0xE7'u8, 0xC8'u8, 0x37'u8, 0x6D'u8, 0x8D'u8, 0xD5'u8, 0x4E'u8, 0xA9'u8, 0x6C'u8, 0x56'u8, 0xF4'u8, 0xEA'u8, 0x65'u8, 0x7A'u8, 0xAE'u8, 0x08'u8,
  0xBA'u8, 0x78'u8, 0x25'u8, 0x2E'u8, 0x1C'u8, 0xA6'u8, 0xB4'u8, 0xC6'u8, 0xE8'u8, 0xDD'u8, 0x74'u8, 0x1F'u8, 0x4B'u8, 0xBD'u8, 0x8B'u8, 0x8A'u8,
  0x70'u8, 0x3E'u8, 0xB5'u8, 0x66'u8, 0x48'u8, 0x03'u8, 0xF6'u8, 0x0E'u8, 0x61'u8, 0x35'u8, 0x57'u8, 0xB9'u8, 0x86'u8, 0xC1'u8, 0x1D'u8, 0x9E'u8,
  0xE1'u8, 0xF8'u8, 0x98'u8, 0x11'u8, 0x69'u8, 0xD9'u8, 0x8E'u8, 0x94'u8, 0x9B'u8, 0x1E'u8, 0x87'u8, 0xE9'u8, 0xCE'u8, 0x55'u8, 0x28'u8, 0xDF'u8,
  0x8C'u8, 0xA1'u8, 0x89'u8, 0x0D'u8, 0xBF'u8, 0xE6'u8, 0x42'u8, 0x68'u8, 0x41'u8, 0x99'u8, 0x2D'u8, 0x0F'u8, 0xB0'u8, 0x54'u8, 0xBB'u8, 0x16'u8 ]

const rcon: array[10, byte] = [ 0x01'u8, 0x02'u8, 0x04'u8, 0x08'u8, 0x10'u8, 0x20'u8, 0x40'u8, 0x80'u8, 0x1B'u8, 0x36'u8 ]

const N = 16
const rounds = 9

type Block = array[N, uint8]

proc sub_bytes(data: var Block) =
  data[0] = save_box[data[0]]
  data[1] = save_box[data[1]]
  data[2] = save_box[data[2]]
  data[3] = save_box[data[3]]

  data[4] = save_box[data[4]]
  data[5] = save_box[data[5]]
  data[6] = save_box[data[6]]
  data[7] = save_box[data[7]]

  data[8] = save_box[data[8]]
  data[9] = save_box[data[9]]
  data[10] = save_box[data[10]]
  data[11] = save_box[data[11]]

  data[12] = save_box[data[12]]
  data[13] = save_box[data[13]]
  data[14] = save_box[data[14]]
  data[15] = save_box[data[15]]

proc shift_rows(data: var Block) =
  var tmp = data[1]
  data[1] = data[5]
  data[5] = data[9]
  data[9] = data[13]
  data[13] = tmp

  tmp = data[2]
  data[2] = data[10]
  data[10] = tmp

  tmp = data[3]
  data[3] = data[15]
  data[15] = data[11]
  data[11] = data[7]
  data[7] = tmp

  tmp = data[6]
  data[6] = data[14]
  data[14] = tmp

proc mul2(n1: uint8): uint8 =
  if (n1 and 0x80'u8) == 0x80'u8:
    return (2 * (n1 xor 0x80'u8)) xor 0x1b'u8
  return 2 * n1

proc mix_columns(data: var Block) =
  var
    tmp0 = data[0]
    tmp1 = data[1]
    tmp2 = data[2]
    tmp3 = data[3]

  data[0] = tmp0.mul2() xor tmp1 xor tmp1.mul2() xor tmp2 xor tmp3
  data[1] = tmp0 xor tmp1.mul2() xor tmp2 xor tmp2.mul2() xor tmp3
  data[2] = tmp0 xor tmp1 xor tmp2.mul2() xor tmp3 xor tmp3.mul2()
  data[3] = tmp0 xor tmp0.mul2() xor tmp1 xor tmp2 xor tmp3.mul2()

  tmp0 = data[4]
  tmp1 = data[5]
  tmp2 = data[6]
  tmp3 = data[7]

  data[4] = tmp0.mul2() xor tmp1 xor tmp1.mul2() xor tmp2 xor tmp3
  data[5] = tmp0 xor tmp1.mul2() xor tmp2 xor tmp2.mul2() xor tmp3
  data[6] = tmp0 xor tmp1 xor tmp2.mul2() xor tmp3 xor tmp3.mul2()
  data[7] = tmp0 xor tmp0.mul2() xor tmp1 xor tmp2 xor tmp3.mul2()

  tmp0 = data[8]
  tmp1 = data[9]
  tmp2 = data[10]
  tmp3 = data[11]

  data[8] = tmp0.mul2() xor tmp1 xor tmp1.mul2() xor tmp2 xor tmp3
  data[9] = tmp0 xor tmp1.mul2() xor tmp2 xor tmp2.mul2() xor tmp3
  data[10] = tmp0 xor tmp1 xor tmp2.mul2() xor tmp3 xor tmp3.mul2()
  data[11] = tmp0 xor tmp0.mul2() xor tmp1 xor tmp2 xor tmp3.mul2()

  tmp0 = data[12]
  tmp1 = data[13]
  tmp2 = data[14]
  tmp3 = data[15]

  data[12] = tmp0.mul2() xor tmp1 xor tmp1.mul2() xor tmp2 xor tmp3
  data[13] = tmp0 xor tmp1.mul2() xor tmp2 xor tmp2.mul2() xor tmp3
  data[14] = tmp0 xor tmp1 xor tmp2.mul2() xor tmp3 xor tmp3.mul2()
  data[15] = tmp0 xor tmp0.mul2() xor tmp1 xor tmp2 xor tmp3.mul2()

proc add_round_key(data: var Block, key: Block) =
  data[0] = data[0] xor key[0]
  data[1] = data[1] xor key[1]
  data[2] = data[2] xor key[2]
  data[3] = data[3] xor key[3]

  data[4] = data[4] xor key[4]
  data[5] = data[5] xor key[5]
  data[6] = data[6] xor key[6]
  data[7] = data[7] xor key[7]

  data[8] = data[8] xor key[8]
  data[9] = data[9] xor key[9]
  data[10] = data[10] xor key[10]
  data[11] = data[11] xor key[11]

  data[12] = data[12] xor key[12]
  data[13] = data[13] xor key[13]
  data[14] = data[14] xor key[14]
  data[15] = data[15] xor key[15]

proc makeRoundKey(data: var Block, count: int) =
  data[0] = save_box[data[13]] xor rcon[count] xor data[0]
  data[1] = save_box[data[14]] xor data[1]
  data[2] = save_box[data[15]] xor data[2]
  data[3] = save_box[data[12]] xor data[3]

  data[4] = data[0] xor data[4]
  data[5] = data[1] xor data[5]
  data[6] = data[2] xor data[6]
  data[7] = data[3] xor data[7]

  data[8] = data[4] xor data[8]
  data[9] = data[5] xor data[9]
  data[10] = data[6] xor data[10]
  data[11] = data[7] xor data[11]

  data[12] = data[8] xor data[12]
  data[13] = data[9] xor data[13]
  data[14] = data[10] xor data[14]
  data[15] = data[11] xor data[15]

proc encrypt*(data, key: Block): Block =
  result = data
  result.add_round_key(key)

  var round_key = key
  for i in 0..<rounds:
    round_key.makeRoundKey(i)
    result.sub_bytes()
    result.shift_rows()
    result.mix_columns()
    result.add_round_key(round_key)

  round_key.makeRoundKey(rounds)
  result.sub_bytes()
  result.shift_rows()
  result.add_round_key(round_key)