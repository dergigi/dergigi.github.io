// ----------------------------------------------
// Words Section Nav
// ----------------------------------------------
const WordsNav = (() => {
  const SCROLL_THRESHOLD = 50;
  const MOBILE_QUERY = '(max-width: 32em)';

  let nav;
  let lastScrollY = 0;
  let mobileQuery;

  return {
    init() {
      nav = document.querySelector('.words-nav');

      if (!nav) {
        return;
      }

      mobileQuery = window.matchMedia(MOBILE_QUERY);
      lastScrollY = window.scrollY;

      window.addEventListener('scroll', this.onScroll, { passive: true });
      mobileQuery.addEventListener('change', this.onScroll);
    },

    onScroll() {
      if (!mobileQuery.matches) {
        nav.classList.remove('words-nav--hidden');
        return;
      }

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
