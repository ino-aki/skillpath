// Custom JavaScript for the application

$(document).ready(function() {
  // Toggle tabs
  $('.tab-button').on('click', function() {
    var tab_id = $(this).attr('data-tab');

    $('.tab-button').removeClass('active');
    $('.tab-content').removeClass('active');

    $(this).addClass('active');
    $("#" + tab_id).addClass('active');
  });

  // Handle comment form submission via AJAX
  $('#new_comment').on('ajax:success', function(event) {
    var data = event.detail[0];
    $('#new_comment')[0].reset(); // Reset form
    $('.comment-list').prepend(
      '<div class="comment">' +
        '<div class="comment-info">' +
          '<p class="comment-date">' + data.created_at + '</p>' +
        '</div>' +
        '<p class="comment-content">' + data.content + '</p>' +
      '</div>'
    );
  }).on('ajax:error', function(event) {
    var errors = event.detail[0];
    $('#study-plan-feedback').html('<div class="alert alert-danger">コメントの投稿に失敗しました。</div>');
  });

  // Handle study plan form submission via AJAX
  $('#study-plan-form').on('submit', function(event) {
    event.preventDefault();
    var form_data = $(this).serialize();
    $.ajax({
      url: $(this).attr('action'),
      method: 'POST',
      data: form_data,
      success: function(response) {
        $('#study-plan-result').html('<div class="alert alert-success">' + response.message + '</div>');
      },
      error: function(xhr) {
        var errors = xhr.responseJSON.errors;
        $('#study-plan-feedback').html('<div class="alert alert-danger">' + errors.join('<br>') + '</div>');
      }
    });
  });
});
