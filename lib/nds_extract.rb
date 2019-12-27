$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require  "pp" 
puts pp directors_database
# F ind a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(row_index)
sub_total=0 

   inner_index=0

      while inner_index<directors_database[row_index][:movies].length do
     
      
     sub_total+=directors_database[row_index][:movies][inner_index][:worldwide_gross]
      # puts total
      inner_index+=1
  end
  
   
   #puts  sub_total
    return sub_total
   end
   
 
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  total=0 
  result = {}
  row_index=0 
 
while  row_index<directors_database.length  do
    director_name=directors_database[row_index][:name]
     total=gross_for_director(row_index)
     #puts row_index
    result[director_name]=total

        
    row_index+=1 
    
     
  end
    
  # puts result
    return  result
    
  nil
end
