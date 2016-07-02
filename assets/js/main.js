$(document).ready(function() {
    $('body').addClass('js');
  
    var $menu = $('#menu'),
        $menulink = $('.menu-link');
  
    $menulink.click(function() {
        $menulink.toggleClass('active');
        $menu.toggleClass('active');
        return false;
    });
    
    //document.body.innerHTML = MarkFractions(document.body.innerHTML);
    //document.body.innerHTML = MarkSmallCaps(document.body.innerHTML);

  	var $tab = $('.tab');
  
    $tab.on("click", function(e){
        e.preventDefault();
        var $this = $(this);
        $this.toggleClass('active');
        $this.next('.panel').toggleClass('active');
    });
});

function MarkFractions(text) {
    var regex = /([\s>])([0-9]\/[0-9])(?=[\s<])/g;
    return text.replace(regex, '$1<span class="fraction">$2</span>');
}

function MarkSmallCaps(text) {
    var regex = /(<abbr>)(am|pm|ad|bc|[a-z]{4,})(<\/abbr>)/ig;
    return text.replace(regex, '<abbr class="small-caps">$2$3');
}