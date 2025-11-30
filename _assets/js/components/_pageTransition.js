// ----------------------------------------------
// Imports
// ----------------------------------------------
import $ from 'jquery';

// ----------------------------------------------
// Page Transition
// ----------------------------------------------
const PageTransition = (() => {
  let s;
  const noTransition = 'no-transition';

  return {
    settings() {
      return {
        transitionLinks: $(`a[href^="http://${top.location.host.toString()}"], a[href^="/"], a[href^="./"], a[href^="../"]`).not(`.${noTransition}`),
        body: $('body'),
        window: $(window),
        exit: 400,
        entrance: 200
      };
    },

    init() {
      if (window === window.top) {
        s = this.settings();
        this.bindEvents();
      } else {
        setTimeout(() => {
          $('body').addClass('js-page-loaded');
        }, 600);
      }
    },

    bindEvents() {
      this.loadingClasses();
      this.transitionPage();
      this.firefox();
      this.safari();
    },

    loadingClasses() {
      setTimeout(() => {
        s.body.addClass('js-page-loaded');
      }, s.entrance);
    },

    transitionPage() {
      s.transitionLinks.on('click', e => {
        if (s.body.hasClass(noTransition) || e.metaKey || e.ctrlKey || e.shiftKey) {
          return;
        }
        e.preventDefault();

        const linkLocation = $(e.currentTarget).attr('href');

        s.body.addClass('js-page-exiting');

        setTimeout(() => {
          window.location = linkLocation;
        }, s.exit);
      });
    },

    firefox() {
      // jQuery 3 removed the `.unload()`/`.unbind()` shorthand methods.
      // Use the modern `.on()`/`.off()` API instead and guard for safety.
      if (s && s.window && typeof s.window.on === 'function') {
        s.window.on('unload', () => {
          s.window.off('unload');
        });
      }
    },

    safari() {
      s.window.bind('pageshow', e => {
        if (e.originalEvent.persisted) {
          window.location.reload();
        }
      });
    }
  };
})();

// ----------------------------------------------
// Exports
// ----------------------------------------------
export default PageTransition;
