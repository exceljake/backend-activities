# require './exercise'

class Exercise 
  def Exercise.gimme(arr)
    # sorted_arr = arr.sort #1,2,3
    # middle = sorted_arr[1] # 2 
    # arr.index(middle)
    arr.index(arr.sort[1])
  end

  def Exercise.delete_nth(lst,num) 
    #declare array newList
    #initiate loop
    #condition: count x inside newlist, if it exceeds num
    #remove x
    #if it doesnt, push x to newlist
    #return newlist
    newList = []
    lst.each {|x| newList.count(x) < num ? newList << x : ''}
    newList
  end

  # def Exercise.choose_best_sum(t, k, ls)
  #   # t = maximum distance 
  #   # k = number of towns 
  #   # ls = list of distances 
  #   # loop array to add to each other
  #  ls_arrays = ls.combination(k).to_a
  # end

  def self.choose_best_sum(t,k,ls)
    # t = maximum distance 
    # k = number of towns 
    # ls = list of distances 
      nil if ls.length < k
      store = []
      ls.combination(k) do |grp|
        store << grp.sum if grp.sum <= t
      end

    return store.length == 0 ? nil: store.max
  end

  def Exercise.is_sorted_and_how(array)
    #if array is in ascending order [1,2,3] should return yes ascending
    #if array is in descending order [3,2,1] should return yes descending
    #if its jumbled, return no 
    if array.sort === array 
      'yes, ascending'
    elsif  
      array.sort.reverse === array 
      'yes, descending' 
    else
      'no'
    end
  end

  def Exercise.iq_test(str) 
    
  end
  
  def Exercise.up_array(arr)
    # join_arr = arr.join
    # join_arr_1 = join_arr.to_i + 1 
    # join_arr_1.to_s.chars.map(&:to_i)
    (arr.join.to_i + 1).to_s.chars.map(&:to_i)
  end

  def Exercise.panagram?(str)
    # alphabet = ('a'..'z')
    # str_lower = str.downcase
    # alphabet.all? { |a| str_lower.include? a }

    ('a'..'z').all? { |a| str.downcase.include? a }
  end
end
describe Exercise do
  # describe '.gimme' do
  #   it 'should return the index of the middle number from the tuple' do
  #     expect(Exercise.gimme([2,3,1])).to eq 0
  #     expect(Exercise.gimme([5, 10, 14])).to eq 1
  #     expect(Exercise.gimme([21, 203, 90])).to eq 2
  #   end
  # end

  # describe '.delete_nth' do
  #   it 'should return array with n amount of matches' do
  #     expect(Exercise.delete_nth([1,1,1,1], 2)).to eq [1, 1]
  #     expect(Exercise.delete_nth([20,37,20,21], 1)).to eq [20,37,21]
  #   end
  # end

  # describe '.choose_best_sum' do
  #   it 'should return closest value from combination of array numbers' do
  #     ts = [50, 55, 56, 57, 58]
  #     expect(Exercise.choose_best_sum(163, 3, ts)).to eq 163
  #     xs = [50]
  #     expect(Exercise.choose_best_sum(163, 3, xs)).to be_nil
  #     ys = [91, 74, 73, 85, 73, 81, 87]
  #     expect(Exercise.choose_best_sum(230, 3, ys)).to eq 228
  #   end
  # end

  describe '.is_sorted_and_how' do
    it 'should return if sorted or not, if sorted it should describe how it is sorted' do
      expect(Exercise.is_sorted_and_how([1, 2, 3, 5, 8, 13, 21, 34])).to eq "yes, ascending"
      expect(Exercise.is_sorted_and_how([19, 17, 13, 11, 7, 5, 3, 2])).to eq "yes, descending"
      expect(Exercise.is_sorted_and_how([7, 9, 10, 3, 2, -10, 22])).to eq "no"
    end
  end

  # describe '.iq_test' do
  #   it 'should return position of the number different in the set' do
  #     expect(Exercise.iq_test("2 4 7 8 10")).to eq 3
  #     expect(Exercise.iq_test("1 2 1 1")).to eq 2
  #   end
  # end

  # describe '.letter_count' do
  #   it 'should return hash of all characters with their character count' do
  #     result = {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
  #     expect(Exercise.letter_count('arithmetics')).to eq result
  #     result = {:m=>2, :a=>3, :t=>2, :h=>1, :e=>1, :i=>1, :c=>1, :l=>1}
  #     expect(Exercise.letter_count('mathematical')).to eq result
  #     result = {:c=>1, :l=>1, :g=>1, :e=>1, :b=>1, :r=>1, :i=>1, :a=>2}
  #     expect(Exercise.letter_count('algebraic')).to eq result
  #     result = {:l=>1, :i=>2, :n=>2, :e=>3, :a=>1, :r=>3, :g=>1, :s=>3, :o=>1}
  #     expect(Exercise.letter_count('linear regressions')).to eq result
  #   end
  # end

  # describe '.up_array' do
  #   it 'should return an increment from the number value represented in an array' do
  #     expect(Exercise.up_array([2, 3, 9])).to eq [2, 4, 0]
  #     expect(Exercise.up_array([4, 3, 2, 5])).to eq [4, 3, 2, 6]
  #     expect(Exercise.up_array([1, 9, 9, 9])).to eq [2, 0, 0, 0]
  #     expect(Exercise.up_array([7, 7, 7])).to eq [7, 7, 8]

  #     expect(Exercise.up_array([9, 9, 9])).to eq [1, 0, 0, 0]
  #     expect(Exercise.up_array([1, 9, 9, 2])).to eq [1, 9, 9, 3]
  #     expect(Exercise.up_array([5, 2, 1, 3, 9, 4])).to eq [5, 2, 1, 3, 9, 5]
  #   end
  # end

  # describe '.reverse_alternate' do
  #   it 'should reverse every other word in the given string' do
  #     expect(Exercise.reverse_alternate("Did it work?")).to eq ("Did ti work?")
  #     expect(Exercise.reverse_alternate("Are we there yet?")).to eq ("Are ew there ?tey")
  #   end
  # end

  # describe '.solve' do
  #   it 'returns the number of the highest consonant/combination' do
  #     expect(Exercise.solve("zodiacs")).to eq 26
  #     expect(Exercise.solve("strength")).to eq 57
  #     expect(Exercise.solve("Mathematical")).to eq 28
  #   end
  # end

  # describe '.panagram?' do
  #   it 'returns true if string is a panagram' do
  #     expect(Exercise.panagram?("The quick brown fox jumps over the lazy dog.")).to be true
  #     expect(Exercise.panagram?("This is not a pangram.")).to be false
  #     # bonus
  #     expect(Exercise.panagram?("The jay, pig, fox, zebra and my wolves quack!")).to be true
  #   end
  # end
end
