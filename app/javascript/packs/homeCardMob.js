const cards = () => {
 TweenMax.staggerTo(".home-card", 3, {
    opacity:1,
    ease:Elastic.easeOut
  }, 0.3);
}

const reviews = () => {
 TweenMax.staggerTo(".review-card", 3, {
    opacity:1,
    ease:Elastic.easeOut
  }, 0.3);
}

setTimeout(function(){
  cards();
  reviews();
}, 500);
