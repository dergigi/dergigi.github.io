// ----------------------------------------------
// Imports
// ----------------------------------------------
import $ from 'jquery';

// ----------------------------------------------
// Read More
//
// Progressively reveals paragraphs one click at a
// time. The first two paragraphs stay visible; the
// rest are collapsed and disclosed on each button press.
// ----------------------------------------------
const VISIBLE_COUNT = 2;

export const readMore = () => {
  const $container = $('.js-read-more');

  if (!$container.length) {
    return;
  }

  const $paragraphs = $container.children('p');

  if ($paragraphs.length <= VISIBLE_COUNT) {
    return;
  }

  const $hidden = $paragraphs.slice(VISIBLE_COUNT);
  $hidden.addClass('read-more__item');

  const $button = $('<button>', {
    'type': 'button',
    'class': 'read-more__toggle',
    'aria-label': 'read more',
    'html': '<i class="fas fa-chevron-down" aria-hidden="true"></i>'
  });

  $container.append($button);

  let index = 0;

  $button.on('click', () => {
    $hidden.eq(index).addClass('is-revealed');
    index += 1;

    if (index >= $hidden.length) {
      $button.remove();
    }
  });
};
