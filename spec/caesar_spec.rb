require './caesar.rb'
  
describe CaesarCipher do
  describe "#caesar_cipher" do
    it "does not remove spaces" do
      caesar = CaesarCipher.new
      expect(caesar.caesar_cipher("There are spaces", 5)).to eql("Ymjwj fwj xufhjx")
    end    

    it "does not change case" do
      caesar = CaesarCipher.new
      expect(caesar.caesar_cipher("tHe cAsE dOeS nOt cHaNgE sPoNgEbOb", 5)).to eql("yMj hFxJ iTjX sTy hMfSlJ xUtSlJgTg")
    end

    it "does not change punctuation" do 
      caesar = CaesarCipher.new
      expect(caesar.caesar_cipher("Wow! I'm, So; Impressed: Now?.", 5)).to eql("Btb! Nr, Xt; Nruwjxxji: Stb?.")
    end

    it "does the caesar cipher shift properly" do 
      caesar = CaesarCipher.new
      expect(caesar.caesar_cipher("What a String!", 5)).to eql("Bmfy f Xywnsl!")
    end

  end
end