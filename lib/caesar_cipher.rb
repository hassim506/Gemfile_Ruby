
#Methode qui permet de convertir et chiffrer par decalage de 3



def caesar_cipher(text, shift) #methode bi dafa am ay paramettre en entré a savoir text pour le text entré et shift pour le nombre de decalage
  text.chars.map do |char|
    if char.match?(/[a-zA-Z]/) #ligne dafa diema khole esque reellement le caratere choisis se trouve dans l'interval a-z et A-Z si oui ,
      ((char.downcase.ord - 97 + shift) % 26 + 97).chr.upcase #si oui , il convertit d'abord le caractere en miniscule puis le remplace par sa correspondance dans la tableAScii
       #apres l'avoir remplacer dekoy decaler avec shift puis effectue le modulo de 26 et retransforme la chaine en majuscule et continue au suivant
    else
      #si le if est faux manam guissoul char dekoy teub djeli benene caractere defate condition bi
      char
    end
  end.join
end

# Exemple d'utilisation : fii la utiliser  mbir yi
plaintext = "Hello, World!"
key = 3
puts "Texte clair : #{plaintext}"
puts "Clé de chiffrement : #{key}"
encrypted_text = caesar_cipher(plaintext, key)
puts "Texte chiffré : #{encrypted_text}"
