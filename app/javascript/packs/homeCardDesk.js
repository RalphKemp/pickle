var t1 = new TimelineLite();

const deskCards = () => {
 t1.staggerTo(".desktop-home-card", 3, {
    opacity:1,
    ease:Elastic.easeOut
  }, 0.3);
}

setTimeout(function(){
  deskCards();
}, 500);
