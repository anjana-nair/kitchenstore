describe "String" do

  describe "creation of a new object" do
    
    it "will return an empty string when given no arguments" do
      
      expect(String.new).to eq("")

    end
    
    it "will return the specified string when given as argument" do
      
      expect(String.new("anjana")).to eq("anjana")

    end
    
    
   end
    
    
  
end