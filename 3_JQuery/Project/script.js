$(function () {
  var $mainMenuItems = $("#main_menu ul").children("li"),
    totalMainMenuItems = $mainMenuItems.length,
    openedIndex = 2,
    init = function () {
      // bindEvents();
      if (validIndex(openedIndex))
        animateItem($mainMenuItems.eq(openedIndex), true, 700);
    };

  // bindEvents = function(){
  $mainMenuItems.children(".images").click(function () {
    var newIndex = $(this).parent().index(); // this = élement sur lequel je suis
    checkAndAnimateItem(newIndex);
  });
  $(".button").hover(
    function () {
      $(this).addClass("hovered");
    },
    function () {
      $(this).removeClass("hovered");
    }
  );
  $(".button").click(function () {
    var newIndex = $(this).index();
    checkAndAnimateItem(newIndex);
  });

  // };

  (validIndex = function (indexToCheck) {
    //Par obligatoire

    return indexToCheck >= 0 && indexToCheck < totalMainMenuItems;
  }),
    (animateItem = function ($item, toOpen, speed) {
      var $colorImage = $item.find(".color"),
        itemParam = toOpen ? { width: "420px" } : { width: "140px" }, //Facon d'écrire pour variable booléenne
        $colorImageParam = toOpen ? { left: "0px" } : { left: "140px" };

      $colorImage.animate($colorImageParam, speed);
      $item.animate(itemParam, speed);
    });

  checkAndAnimateItem = function (index) {
    $item = $mainMenuItems.eq(index);
    if (openedIndex == index) {
      animateItem($item, false, 250);
      openedIndex = -1;
    } else {
      if (validIndex(index)) {
        animateItem($mainMenuItems.eq(openedIndex), false, 250);
        animateItem($item, true, 250);
        openedIndex = index;
      }
    }
  };

  init();
  // console.log($mainMenuItems);
  // console.log(totalMainMenuItems);
  // console.log(openedIndex);
});
