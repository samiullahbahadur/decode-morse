

MORSE_DICT{

    '.-' => 'a',
    '-...' => 'b',
    '-.-.' => 'c',
    '-..' => 'd',
    '.' => 'e',
    '..-.' => 'f',
    '--.' => 'g',
    '....' => 'h',
    '..' => 'i',
    '.---' => 'j',
    '-.-' => 'k',
    '.-..' => 'l',
    '--' => 'm',
    '-.' => 'n',
    '---' => 'o',
    '.--.' => 'p',
    '--.-' => 'q',
    '.-.' => 'r',
    '...' => 's',
    '-' => 't',
    '..-' => 'u',
    '...-' => 'v',
    '.--' => 'w',
    '-..-' => 'x',
    '-.--' => 'y',
    '--..' => 'z',
    ' ' => ' ',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '-----' => '0'
}.freeze
def decode_char(char)
    MORSE_DICT[char].capitalize
  end
  def decode_word(word)
    char_list = word.split
    result = ''
    char_list.each { |x| result += decode_char(x) }
    result
  end

  
def decode(sentence)
    word_list = sentence.split('   ')
    result = ''
    word_list.each { |word| result += "#{decode_word(word)} " }
    result
  end
  
  print(decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'))
  