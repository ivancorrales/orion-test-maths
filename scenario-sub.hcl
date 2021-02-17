# scenario-sub.hcl
scenario "operation substract" {   
   examples = [
      { x = 20, y = 10, subResult= 10},
      { x = 10, y = 20, subResult= 10},
      { x = 5, y = 5, subResult= 0},
   ]
   when "subtract y to x" {
      set result {
         value = x - y
         when = x > y     
      }
      set result {
         value = y - x
         when = x <= y     
      }
   }
   then "the result of the operation is the expected" {
      assert {
         assertion = result==subResult
      }
   }
}