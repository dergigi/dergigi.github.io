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
// grid below is revealed as the final step. The number
// of revealed steps is remembered for the session so it
// survives navigating away and back.
// ----------------------------------------------
const VISIBLE_COUNT = 2;
const STORAGE_KEY = 'readMoreRevealed';

const readStored = () => {
  try {
    return parseInt(window.sessionStorage.getItem(STORAGE_KEY), 10) || 0;
  } catch (e) {
    return 0;
  }
};

const writeStored = value => {
  try {
    window.sessionStorage.setItem(STORAGE_KEY, value);
  } catch (e) {
    // Ignore storage errors (e.g. private browsing).
  }
};

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

  let index = Math.min(readStored(), steps.length);

  // Restore previously revealed steps without replaying the animation.
  for (let i = 0; i < index; i += 1) {
    steps[i].addClass('is-revealed is-instant');
  }

  if (index >= steps.length) {
    return;
  }

  const $button = $('<button>', {
    'type': 'button',
    'class': 'read-more__toggle',
    'aria-label': 'read more',
    'html': '<i class="fas fa-chevron-down" aria-hidden="true"></i>'
  });

  $container.append($button);

  $button.on('click', () => {
    steps[index].addClass('is-revealed');
    index += 1;
    writeStored(index);

    if (index >= steps.length) {
      $button.remove();
    }
  });
};
