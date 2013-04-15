$(document).ready(function() {

  $('#myForm').on("click",'.add_question', function(e) {
    e.preventDefault();
    var incrementDiv = parseInt($('.question_set').last()[0].id) + 1;
    var question_set = $('<div id=' + incrementDiv + ' class="question_set"><p>' + incrementDiv + '.</p><div class="question_row"><input type= "text" placeholder="Question" name="questions[][question]"></div><button class="add_choice">Add Choice</button><div class="choice_field"><input type="text" placeholder="Choice" name="questions[]answer[]"></div></div>');
    $(this).nextAll('.question_set').last().after(question_set);
  });

  $('#myForm').on("click",'.add_choice', function(e) {
    e.preventDefault();
    var choice = $('<div class="choice_field"><input type="text" placeholder="Choice" name="questions[]answer[]"></div>');
    $(this).nextAll('.choice_field').last().after(choice);
  });

});
