// ----------------------------------------------
// Imports
// ----------------------------------------------
import $ from 'jquery';

// ----------------------------------------------
// FlexVid
// ----------------------------------------------
export const miscFlexVid = () => {
  const $markdown = $('#markdown');

  if (!$markdown.length) {
    return;
  }

  // Wrap iframes and embeds in a responsive container
  $markdown
    .find('iframe, embed')
    .each((idx, el) => {
      const $el = $(el);

      if (!$el.parent('.flex-video').length) {
        $el.wrap('<div class="flex-video"></div>');
      }
    });
};

// ----------------------------------------------
// Zoom
// ----------------------------------------------
export const miscZoom = () => {
  const imgArr = $('.post__content img');

  imgArr.each((idx, img) => {
    if (img.src.indexOf('full') === -1) {
      $(img).attr('data-action', 'zoom');
    }
  });
};

// ----------------------------------------------
// Social Share
// ----------------------------------------------
export const miscSocialShare = () => {
  const $shareLinks = $('.js-share');

  if (!$shareLinks.length) {
    return;
  }

  $shareLinks.on('click', e => {
    e.preventDefault();

    const $link = $(e.currentTarget);
    const href = $link.attr('href');

    const width = 575;
    const height = 400;
    const left = (window.innerWidth - width) / 2;
    const top = (window.innerHeight - height) / 2;

    window.open(
      href,
      'share',
      `status=1,width=${width},height=${height},top=${top},left=${left}`
    );
  });
};
