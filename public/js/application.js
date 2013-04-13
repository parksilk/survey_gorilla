$(document).ready(function() {

  $('#myForm').on("click",'.add_question',function(e) {
    e.preventDefault();
    var question_set = $('<ol class="question_set"> <button class="add_question">Add Question</button> <li><input type= "text" placeholder="question" name="questions[][question]"></li> <li> <ul class="answer_set"> <button class="add_choice">Add Choice</button> <li><input type="text" placeholder="Enter" name="questions[]answer[]"></li> </ul> </li> </ol>')
    $(this).closest(".question_set").after(question_set);
  });

  $('#myForm').on("click",'.add_choice',function(e) {
    e.preventDefault();
    var choice = $('<li><input type="text" placeholder="Enter" name="questions[]answer[]"></li>');
    $(this).closest(".answer_set").append(choice);
  });

});
