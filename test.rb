keys = ["answer_text","question_id","category_id","user_id"]
output = CSV.parse("yes,29,31,239").map {|a| Hash[ keys.zip(a) ]}
p output
