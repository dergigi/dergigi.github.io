// ----------------------------------------------
// Imports
// ----------------------------------------------
import $ from 'jquery';

// ----------------------------------------------
// Read More
//
// Progressively reveals paragraphs one click at a
// time. The first paragraph stays visible; the rest
// are collapsed and disclosed on each button press.
// ----------------------------------------------
export const readMore = () => {
  const $container = $('.js-read-more');

  if (!$container.length) {
    return;
  }

  const $paragraphs = $container.children('p');

  if ($paragraphs.length <= 1) {
    return;
  }

  const $hidden = $paragraphs.slice(1);
  $hidden.addClass('read-more__item');

  const $button = $('<button>', {
    'type': 'button',
    'class': 'read-more__toggle',
    'text': 'read more'
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
