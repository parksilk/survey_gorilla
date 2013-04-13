$(document).ready(function() {

  $('#myForm').on("click",'.add_question',function(e) {
    e.preventDefault();
    var question_set = $('<div class="question_answer"><input type= "text" placeholder="Enter Question" name="questions[][question]"> <button class="add_question">Add Question</button><div class="choices"><button class="add_choice">add choice</button><input type="text" placeholder="answer" name="questions[]answer[]"></div></div>')
    $(this).closest(".question_answer").after(question_set);
  });

  $('#myForm').on("click",'.add_choice',function(e) {
    e.preventDefault();
    var choice = $('<input type="text" placeholder="Enter Choice" name="questions[]answer[]">');
    $(this).closest(".choices").after(choice);
  });

});
