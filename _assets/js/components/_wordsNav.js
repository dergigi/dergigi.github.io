// ----------------------------------------------
// Words Section Nav
// ----------------------------------------------
const WordsNav = (() => {
  const SCROLL_THRESHOLD = 50;

  let nav;
  let lastScrollY = 0;

  return {
    init() {
      nav = document.querySelector('.words-nav');

      if (!nav) {
        return;
      }

      lastScrollY = window.scrollY;
      window.addEventListener('scroll', this.onScroll, { passive: true });
    },

    onScroll() {
      const currentScrollY = window.scrollY;

      if (currentScrollY < SCROLL_THRESHOLD) {
        nav.classList.remove('words-nav--hidden');
      } else if (currentScrollY > lastScrollY) {
        nav.classList.add('words-nav--hidden');
      } else {
        nav.classList.remove('words-nav--hidden');
      }

      lastScrollY = currentScrollY;
    }
  };
})();

export default WordsNav;
