def caesar_cipher(text,n)
    text.unpack("C*").map{|x| ((65..90).include? x)  || ((97..122).include? x) ? (96 < x && x + n%26 < 123) || (x + n%26 < 91) ? (x + n%26).chr : (x + n%26 -26).chr : x.chr}.join
end

p caesar_cipher("What a string!", 5)