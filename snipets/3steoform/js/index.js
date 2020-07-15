const stepForm = () => { 
  let $btn          = $('.button'),
      $count        = 0,
      $modalWrap    = $('.modal-wrap'),
      $header       = $('.modal-header'),
      $rerunBtn     = $('.rerun-button'),
      $modalBody    = $('.modal-body').length,
      $modalHeader  = $('.modal-header span'),
      $modalBFirst  = $('.modal-bodies .modal-body:first'),
      setting  = {
        animateOutSpeed: 600,
        animateInSpeed: 1200
      };
  
  function removeSlide(run) {
    $count++;
    if ($count === $modalBody) { doneSlide(run); $count = 0; $header.addClass('hcolor'); } else {
      run.removeClass('animate-out is-showing').next().addClass('animate-in');
      run.removeClass('is-active').next().addClass('is-active');
    };
    $modalHeader.eq($count).addClass('is-active');
  }
  
  function addNewSlide(run) {
    run.next().removeClass('animate-in').addClass('is-showing');
  }
  
  function doneSlide(run) {
    run.parents('.modal-wrap').addClass('animate-up');
    setTimeout(() => $rerunBtn.css('display', 'inline-block'), 300);
    run.removeClass('animate-out is-showing is-active');
    $modalHeader.removeClass('is-active');
  }
  
  function restart() {
    $modalWrap.removeClass('animate-up');
    $modalBFirst.addClass('is-showing');
    $header.removeClass('hcolor');
    $rerunBtn.hide();
  }
  
  function pulse() {
    setTimeout(() => $header.addClass('pulse'), setting.animateOutSpeed);
    setTimeout(() => $header.removeClass('pulse'), setting.animateInSpeed);
  }
  
  function btnClick() {     
    let run = $(this).parents('.modal-body');
    run.addClass('animate-out');
    pulse();
    setTimeout(() => removeSlide(run), setting.animateOutSpeed);
    setTimeout(() => addNewSlide(run), setting.animateInSpeed); 
  }
  
  $btn.on('click', btnClick);
  $rerunBtn.on('click', restart);
  
}

stepForm();