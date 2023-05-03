require './caesar.rb'
  
describe CaesarCipher do
  describe "#caesar_cipher" do
    it "does not remove spaces" do
      caesar = CaesarCipher.new
      expect(caesar.caesar_cipher("There are spaces", 5)).to eql("Ymjwj fwj xufhjx")
    end    
  end
end