describe "my_collect" do
  let(:languages) { ['ruby', 'javascript', 'python', 'objective-c'] } 

  it "can handle an empty collection" do
    empty_array = []
    saved_block = Proc.new {
      my_collect(empty_array) do |x|
        raise "This block should not run!"
      end
    }
    expect(saved_block).to_not raise_error
  end

  it "returns a new collection" do
    expect(my_collect(languages) do |language|
      language.upcase
    end).to eq(["RUBY", "JAVASCRIPT", "PYTHON", "OBJECTIVE-C"])
  end

  it 'does not modify the original collection' do 
    my_collect(languages) do |language|
      language.upcase
    end
    expect(languages).to eq(['ruby', 'javascript', 'python', 'objective-c'])
  end
end