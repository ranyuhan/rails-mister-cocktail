import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Your Cocktail Lab", "Where The Best Recipes Hide"],
    typeSpeed: 50,
    loop: true,
    backDelay: 700,
  });
}

export { loadDynamicBannerText };
