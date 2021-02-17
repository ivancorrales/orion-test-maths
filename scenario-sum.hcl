# scenario-sum.hcl
scenario "operation add" {
   when "values are added" {
      set result {
         value = x + y
      }
   }
   then "the result of the operation is the expected" {
      assert {
         assertion = result==sumResult
      }
   }
}