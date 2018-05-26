
$(document).on("ready turbolinks:load", function(){

	$(".button.is-danger.modal-button.01").on("click", function(){

    var index = $(this).data("index");

	  $("#users-lesson-modal" + index).addClass("is-active");
  });

    $(".modal-background").on("click", function(){
		  $(".modal.is-active").removeClass("is-active");
  });

    $(".modal-close").on("click", function(){
    	$(".modal.is-active").removeClass("is-active");
  });

});

$(document).on("ready turbolinks:load", function(){

  $(".button.is-danger.modal-button.02").on("click", function(){

    var index = $(this).data("index");

    $("#users-interview-modal" + index).addClass("is-active");
  });

    $(".modal-background").on("click", function(){
      $(".modal.is-active").removeClass("is-active");
  });

    $(".modal-close").on("click", function(){
      $(".modal.is-active").removeClass("is-active");
  });

});

$(document).on("ready turbolinks:load", function(){

  $(".button.is-danger.modal-button.03").on("click", function(){

    var index = $(this).data("index");

    $("#users-insight-modal" + index).addClass("is-active");
  });

    $(".modal-background").on("click", function(){
      $(".modal.is-active").removeClass("is-active");
  });

    $(".modal-close").on("click", function(){
      $(".modal.is-active").removeClass("is-active");
  });

});

$(document).on("ready turbolinks:load", function(){

  $(".button.is-danger.modal-button.04").on("click", function(){

    var index = $(this).data("index");

    $("#users-exam-modal" + index).addClass("is-active");
  });

    $(".modal-background").on("click", function(){
      $(".modal.is-active").removeClass("is-active");
  });

    $(".modal-close").on("click", function(){
      $(".modal.is-active").removeClass("is-active");
  });

});

$(document).on("ready turbolinks:load", function(){

  $(".button.is-danger.modal-button.05").on("click", function(){

    var index = $(this).data("index");

    $("#users-practice-modal" + index).addClass("is-active");
  });

    $(".modal-background").on("click", function(){
      $(".modal.is-active").removeClass("is-active");
  });

    $(".modal-close").on("click", function(){
      $(".modal.is-active").removeClass("is-active");
  });

});

$(document).on("ready turbolinks:load", function(){

  $(".button.is-danger.modal-button.06").on("click", function(){

    var index = $(this).data("index");

    $("#users-expedition-modal" + index).addClass("is-active");
  });

    $(".modal-background").on("click", function(){
      $(".modal.is-active").removeClass("is-active");
  });

    $(".modal-close").on("click", function(){
      $(".modal.is-active").removeClass("is-active");
  });

});





