<h1>SHOW!</h1>



<?php $this->beginBlock('block1'); ?>
        <h1>Заголовок страницы</h1>
<?php $this->endBlock()?>



<button class="btn btn-success" id="btn">Click me...</button>
<?php
$script = <<< JS
    $('#btn').on('click',function() 
    {
      $.ajax({
        url: 'index.php?r=post/index',
        data: {test: '123'},
        type: 'POST',
        success: function(res) {
          console.log(res);
        },
        error: function() {
          alert('ERROR!')
        },
      })
    })
    


JS;

$this->registerJs($script);
    ?>