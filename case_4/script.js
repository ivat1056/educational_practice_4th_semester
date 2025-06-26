const images = ["pc.jpg", "laptop.jpg", "consols.png"]; 
let current = 0;

const img = document.getElementById("slider-image");
const counter = document.getElementById("counter");
const prevBtn = document.getElementById("prev");
const nextBtn = document.getElementById("next");

function updateSlider() 
{
  img.src = images[current];
  counter.textContent = `Изображение ${current + 1} из ${images.length}`;
}

prevBtn.addEventListener("click", () => 
{
  current = (current - 1 + images.length) % images.length;
  updateSlider();
});

nextBtn.addEventListener("click", () => 
{
  current = (current + 1) % images.length;
  updateSlider();
});

updateSlider(); 
