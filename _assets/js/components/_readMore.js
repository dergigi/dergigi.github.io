// ----------------------------------------------
// Imports
// ----------------------------------------------
import $ from 'jquery';

// ----------------------------------------------
// Read More
//
// Progressively reveals the intro one click at a time.
// The first few paragraphs stay visible; the remaining
// paragraphs are disclosed one by one, and the posts
// grid below is revealed as the final step.
// ----------------------------------------------
const VISIBLE_COUNT = 2;

export const readMore = () => {
  const $container = $('.js-read-more');

  if (!$container.length) {
    return;
  }

  const $paragraphs = $container.children('p');
  const $hidden = $paragraphs.length > VISIBLE_COUNT
    ? $paragraphs.slice(VISIBLE_COUNT)
    : $();
  const $grid = $('.js-read-more-last');

  $hidden.addClass('read-more__item');
  $grid.addClass('read-more__grid');

  const steps = [];
  $hidden.each((idx, el) => steps.push($(el)));

  if ($grid.length) {
    steps.push($grid);
  }

  if (!steps.length) {
    return;
  }

  const $button = $('<button>', {
    'type': 'button',
    'class': 'read-more__toggle',
    'aria-label': 'read more',
    'html': '<i class="fas fa-chevron-down" aria-hidden="true"></i>'
  });

  $container.append($button);

  let index = 0;

  $button.on('click', () => {
    steps[index].addClass('is-revealed');
    index += 1;

    if (index >= steps.length) {
      $button.remove();
    }
  });
};
