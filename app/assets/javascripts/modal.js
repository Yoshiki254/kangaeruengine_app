//users_lesson 用のモーデル
$(function(){


//モーダルウィンドウを出現させるクリックイベント
$("[id=m-open]").click( function(){

  var index = this.previousElementSibling.getAttribute('data-index');
  //キーボード操作などにより、オーバーレイが多重起動するのを防止する
  $( this ).blur() ;  //ボタンからフォーカスを外す
  if( $( "#m-overlay" )[0] ) return false ;   //新しくモーダルウィンドウを起動しない (防止策1)
  //if($("#modal-overlay")[0]) $("#modal-overlay").remove() ;   //現在のモーダルウィンドウを削除して新しく起動する (防止策2)

  //オーバーレイを出現させる
  $( "body" ).append( '<div id="m-overlay"></div>' ) ;
  $( "#m-overlay" ).fadeIn( "slow" ) ;

  //コンテンツをセンタリングする
  centeringModalSyncer() ;

  //コンテンツをフェードインする
  $( ".m-content" + index ).fadeIn( "slow" ) ;

  //[#modal-overlay]、または[#modal-close]をクリックしたら…
  $( "#m-overlay,[id=m-close]" ).unbind().click( function(){

    //[#modal-content]と[#modal-overlay]をフェードアウトした後に…
    $( "[id=m-content],#m-overlay" ).fadeOut( "fast" , function(){

      //[#modal-overlay]を削除する
      $('#m-overlay').remove() ;

    });

  });

});


//リサイズされたら、センタリングをする関数[centeringModalSyncer()]を実行する
$( window ).resize( centeringModalSyncer ) ;

  //センタリングを実行する関数
  function centeringModalSyncer() {

    //画面(ウィンドウ)の幅、高さを取得
    var w = $( window ).width() ;
    var h = $( window ).height() ;

    // コンテンツ(#modal-content)の幅、高さを取得
    // jQueryのバージョンによっては、引数[{margin:true}]を指定した時、不具合を起こします。
//    var cw = $( "#modal-content" ).outerWidth( {margin:true} );
//    var ch = $( "#modal-content" ).outerHeight( {margin:true} );
    var cw = $( "[id=m-content]" ).outerWidth();
    var ch = $( "[id=m-content]" ).outerHeight();

    //センタリングを実行する
    $( "[id=m-content]" ).css( {"left": ((w - cw)/2) + "px","top": ((h - ch)/2) + "px"} ) ;

  }
});


//users_interview用のモーデル


$(function(){


//モーダルウィンドウを出現させるクリックイベント
$("[id=m-open-01]").click( function(){

  var index = this.previousElementSibling.getAttribute('data-index-01');

  //キーボード操作などにより、オーバーレイが多重起動するのを防止する
  $( this ).blur() ;  //ボタンからフォーカスを外す
  if( $( "#m-overlay" )[0] ) return false ;   //新しくモーダルウィンドウを起動しない (防止策1)
  //if($("#modal-overlay")[0]) $("#modal-overlay").remove() ;   //現在のモーダルウィンドウを削除して新しく起動する (防止策2)

  //オーバーレイを出現させる
  $( "body" ).append( '<div id="m-overlay"></div>' ) ;
  $( "#m-overlay" ).fadeIn( "slow" ) ;

  //コンテンツをセンタリングする
  centeringModalResize() ;

  //コンテンツをフェードインする
  $( ".m-content-01" + index ).fadeIn( "slow" ) ;

  //[#modal-overlay]、または[#modal-close]をクリックしたら…
  $( "#m-overlay,[id=m-close]" ).unbind().click( function(){

    //[#modal-content]と[#modal-overlay]をフェードアウトした後に…
    $( "[id=m-content-01],#m-overlay" ).fadeOut( "fast" , function(){

      //[#modal-overlay]を削除する
      $('#m-overlay').remove() ;

    });

  });

});

$( window ).resize( centeringModalResize ) ;

  //センタリングを実行する関数
  function centeringModalResize() {

    //画面(ウィンドウ)の幅、高さを取得
    var w = $( window ).width() ;
    var h = $( window ).height() ;

    // コンテンツ(#modal-content)の幅、高さを取得
    // jQueryのバージョンによっては、引数[{margin:true}]を指定した時、不具合を起こします。
//    var cw = $( "#modal-content" ).outerWidth( {margin:true} );
//    var ch = $( "#modal-content" ).outerHeight( {margin:true} );
    var cw = $( "[id=m-content-01]" ).outerWidth();
    var ch = $( "[id=m-content-01]" ).outerHeight();

    //センタリングを実行する
    $( "[id=m-content-01]" ).css( {"left": ((w - cw)/2) + "px","top": ((h - ch)/2) + "px"} ) ;

  }
});




//users_insight用のモーデル

$(function(){


//モーダルウィンドウを出現させるクリックイベント
$("[id=m-open-02]").click( function(){

  var index = this.previousElementSibling.getAttribute('data-index-02');

  //キーボード操作などにより、オーバーレイが多重起動するのを防止する
  $( this ).blur() ;  //ボタンからフォーカスを外す
  if( $( "#m-overlay" )[0] ) return false ;   //新しくモーダルウィンドウを起動しない (防止策1)
  //if($("#modal-overlay")[0]) $("#modal-overlay").remove() ;   //現在のモーダルウィンドウを削除して新しく起動する (防止策2)

  //オーバーレイを出現させる
  $( "body" ).append( '<div id="m-overlay"></div>' ) ;
  $( "#m-overlay" ).fadeIn( "slow" ) ;

  //コンテンツをセンタリングする
  centeringModalResize() ;

  //コンテンツをフェードインする
  $( ".m-content-02" + index ).fadeIn( "slow" ) ;

  //[#modal-overlay]、または[#modal-close]をクリックしたら…
  $( "#m-overlay,[id=m-close]" ).unbind().click( function(){

    //[#modal-content]と[#modal-overlay]をフェードアウトした後に…
    $( "[id=m-content-02],#m-overlay" ).fadeOut( "fast" , function(){

      //[#modal-overlay]を削除する
      $('#m-overlay').remove() ;

    });

  });

});

$( window ).resize( centeringModalResize ) ;

  //センタリングを実行する関数
  function centeringModalResize() {

    //画面(ウィンドウ)の幅、高さを取得
    var w = $( window ).width() ;
    var h = $( window ).height() ;

    // コンテンツ(#modal-content)の幅、高さを取得
    // jQueryのバージョンによっては、引数[{margin:true}]を指定した時、不具合を起こします。
//    var cw = $( "#modal-content" ).outerWidth( {margin:true} );
//    var ch = $( "#modal-content" ).outerHeight( {margin:true} );
    var cw = $( "[id=m-content-02]" ).outerWidth();
    var ch = $( "[id=m-content-02]" ).outerHeight();

    //センタリングを実行する
    $( "[id=m-content-02]" ).css( {"left": ((w - cw)/2) + "px","top": ((h - ch)/2) + "px"} ) ;

  }
});


//users_exam用のモーデル

$(function(){


//モーダルウィンドウを出現させるクリックイベント
$("[id=m-open-03]").click( function(){

  var index = this.previousElementSibling.getAttribute('data-index-03');

  //キーボード操作などにより、オーバーレイが多重起動するのを防止する
  $( this ).blur() ;  //ボタンからフォーカスを外す
  if( $( "#m-overlay" )[0] ) return false ;   //新しくモーダルウィンドウを起動しない (防止策1)
  //if($("#modal-overlay")[0]) $("#modal-overlay").remove() ;   //現在のモーダルウィンドウを削除して新しく起動する (防止策2)

  //オーバーレイを出現させる
  $( "body" ).append( '<div id="m-overlay"></div>' ) ;
  $( "#m-overlay" ).fadeIn( "slow" ) ;

  //コンテンツをセンタリングする
  centeringModalResize() ;

  //コンテンツをフェードインする
  $( ".m-content-03" + index ).fadeIn( "slow" ) ;

  //[#modal-overlay]、または[#modal-close]をクリックしたら…
  $( "#m-overlay,[id=m-close]" ).unbind().click( function(){

    //[#modal-content]と[#modal-overlay]をフェードアウトした後に…
    $( "[id=m-content-03],#m-overlay" ).fadeOut( "fast" , function(){

      //[#modal-overlay]を削除する
      $('#m-overlay').remove() ;

    });

  });

});

$( window ).resize( centeringModalResize ) ;

  //センタリングを実行する関数
  function centeringModalResize() {

    //画面(ウィンドウ)の幅、高さを取得
    var w = $( window ).width() ;
    var h = $( window ).height() ;

    // コンテンツ(#modal-content)の幅、高さを取得
    // jQueryのバージョンによっては、引数[{margin:true}]を指定した時、不具合を起こします。
//    var cw = $( "#modal-content" ).outerWidth( {margin:true} );
//    var ch = $( "#modal-content" ).outerHeight( {margin:true} );
    var cw = $( "[id=m-content-03]" ).outerWidth();
    var ch = $( "[id=m-content-03]" ).outerHeight();

    //センタリングを実行する
    $( "[id=m-content-03]" ).css( {"left": ((w - cw)/2) + "px","top": ((h - ch)/2) + "px"} ) ;

  }
});

//users_practiceモーダル用

$(function(){


//モーダルウィンドウを出現させるクリックイベント
$("[id=m-open-04]").click( function(){

  var index = this.previousElementSibling.getAttribute('data-index-04');

  //キーボード操作などにより、オーバーレイが多重起動するのを防止する
  $( this ).blur() ;  //ボタンからフォーカスを外す
  if( $( "#m-overlay" )[0] ) return false ;   //新しくモーダルウィンドウを起動しない (防止策1)
  //if($("#modal-overlay")[0]) $("#modal-overlay").remove() ;   //現在のモーダルウィンドウを削除して新しく起動する (防止策2)

  //オーバーレイを出現させる
  $( "body" ).append( '<div id="m-overlay"></div>' ) ;
  $( "#m-overlay" ).fadeIn( "slow" ) ;

  //コンテンツをセンタリングする
  centeringModalResize() ;

  //コンテンツをフェードインする
  $( ".m-content-04" + index ).fadeIn( "slow" ) ;

  //[#modal-overlay]、または[#modal-close]をクリックしたら…
  $( "#m-overlay,[id=m-close]" ).unbind().click( function(){

    //[#modal-content]と[#modal-overlay]をフェードアウトした後に…
    $( "[id=m-content-04],#m-overlay" ).fadeOut( "fast" , function(){

      //[#modal-overlay]を削除する
      $('#m-overlay').remove() ;

    });

  });

});

$( window ).resize( centeringModalResize ) ;

  //センタリングを実行する関数
  function centeringModalResize() {

    //画面(ウィンドウ)の幅、高さを取得
    var w = $( window ).width() ;
    var h = $( window ).height() ;

    // コンテンツ(#modal-content)の幅、高さを取得
    // jQueryのバージョンによっては、引数[{margin:true}]を指定した時、不具合を起こします。
//    var cw = $( "#modal-content" ).outerWidth( {margin:true} );
//    var ch = $( "#modal-content" ).outerHeight( {margin:true} );
    var cw = $( "[id=m-content-04]" ).outerWidth();
    var ch = $( "[id=m-content-04]" ).outerHeight();

    //センタリングを実行する
    $( "[id=m-content-04]" ).css( {"left": ((w - cw)/2) + "px","top": ((h - ch)/2) + "px"} ) ;

  }
});


//users_expeditionモーダル用

$(function(){


//モーダルウィンドウを出現させるクリックイベント
$("[id=m-open-05]").click( function(){

  var index = this.previousElementSibling.getAttribute('data-index-05');

  //キーボード操作などにより、オーバーレイが多重起動するのを防止する
  $( this ).blur() ;  //ボタンからフォーカスを外す
  if( $( "#m-overlay" )[0] ) return false ;   //新しくモーダルウィンドウを起動しない (防止策1)
  //if($("#modal-overlay")[0]) $("#modal-overlay").remove() ;   //現在のモーダルウィンドウを削除して新しく起動する (防止策2)

  //オーバーレイを出現させる
  $( "body" ).append( '<div id="m-overlay"></div>' ) ;
  $( "#m-overlay" ).fadeIn( "slow" ) ;

  //コンテンツをセンタリングする
  centeringModalResize() ;

  //コンテンツをフェードインする
  $( ".m-content-05" + index ).fadeIn( "slow" ) ;

  //[#modal-overlay]、または[#modal-close]をクリックしたら…
  $( "#m-overlay,[id=m-close]" ).unbind().click( function(){

    //[#modal-content]と[#modal-overlay]をフェードアウトした後に…
    $( "[id=m-content-05],#m-overlay" ).fadeOut( "fast" , function(){

      //[#modal-overlay]を削除する
      $('#m-overlay').remove() ;

    });

  });

});

$( window ).resize( centeringModalResize ) ;

  //センタリングを実行する関数
  function centeringModalResize() {

    //画面(ウィンドウ)の幅、高さを取得
    var w = $( window ).width() ;
    var h = $( window ).height() ;

    // コンテンツ(#modal-content)の幅、高さを取得
    // jQueryのバージョンによっては、引数[{margin:true}]を指定した時、不具合を起こします。
//    var cw = $( "#modal-content" ).outerWidth( {margin:true} );
//    var ch = $( "#modal-content" ).outerHeight( {margin:true} );
    var cw = $( "[id=m-content-05]" ).outerWidth();
    var ch = $( "[id=m-content-05]" ).outerHeight();

    //センタリングを実行する
    $( "[id=m-content-05]" ).css( {"left": ((w - cw)/2) + "px","top": ((h - ch)/2) + "px"} ) ;

  }
});




$(document).ready(function(){

  $(document).bind('ajaxError', 'form#new_users_lesson', 'form#new_users_interview', 'form#new_users_insight', 'form#new_users_exam', 'form#new_users_practice', 'form#new_users_expedition', function(event, jqxhr, settings, exception){

          // note: jqxhr.responseJSON undefined, parsing responseText instead
          $(event.data).render_form_errors( $.parseJSON(jqxhr.responseText) );

        });

      });

      (function($) {

        $.fn.modal_success = function(){
          // close modal
          this.modal('hide');

          // clear form input elements
          // todo/note: handle textarea, select, etc
          this.find('form input[type="date"]').val('');

          // clear error state
          this.clear_previous_errors();
        };

        $.fn.render_form_errors = function(errors){

          $form = this;
          this.clear_previous_errors();
          model = this.data('model');

          // show error messages in input form-group help-block
          $.each(errors, function(field, messages){
            $input = $('input[date="' + model + '[' + field + ']"]');
            $input.closest('.form-group').addClass('has-error').find('.help-block').html( messages.join(' & ') );
          });

        };

        $.fn.clear_previous_errors = function(){
          $('.form-group.has-error', this).each(function(){
            $('.help-block', $(this)).html('');
            $(this).removeClass('has-error');
          });
        }

      }(jQuery));




