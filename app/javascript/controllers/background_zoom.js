window.addEventListener('scroll', function() {
  const scrollY = window.scrollY;
  const zoomElement = document.querySelector('.zoom-background');

  // Calcul du zoom en fonction du scroll
  const zoom = 100 + scrollY / 10; // Ajuste "10" pour plus ou moins de zoom

  zoomElement.style.backgroundSize = `${zoom}%`;
});
