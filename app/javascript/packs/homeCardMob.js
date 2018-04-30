var t1 = new TimelineLite();

const cards = () => {
 t1.staggerTo(".home-card", 3, {
    opacity:1,
    ease:Elastic.easeOut
  }, 0.3);
}

setTimeout(function(){
  cards();
}, 500);
